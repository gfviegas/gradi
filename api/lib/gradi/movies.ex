defmodule Gradi.Movies do
  @moduledoc """
  The Movies context.
  """

  import Ecto.Query, warn: false
  alias Gradi.Repo

  alias Gradi.Movies.Movie

  defp base_query, do: from m in Movie, preload: [{:characters, :actor}, :languages, :directors, :genres, :writers, :companies]

  # Busca por titulo
  defp with_search(query, %{title: title}) do
    from(m in query, where: like(m.title, ^"%#{title}%"))
  end
  defp with_search(query, _), do: query

  # Paginação
  defp with_pagination(query, %{limit: limit, page: page}) do
    from(m in query, limit: ^limit, offset: ^((page-1) * limit))
  end
  defp with_pagination(query, _), do: query

  # Ordenação
  defp with_sort(query, %{sort: order_field}) when order_field in ["rating"], do: query
  defp with_sort(query, filter = %{sort: order_field}) do
    field_atom = sort_field(order_field)
    direction = sort_direction(filter)
    query |> order_by({^direction, ^field_atom})
  end
  defp with_sort(query, _), do: query

  defp sort_field(field), do: Macro.underscore(field) |> String.to_existing_atom

  defp sort_direction(%{sort_direction: "asc"}), do: :asc
  defp sort_direction(%{sort_direction: "desc"}), do: :desc
  defp sort_direction(_), do: :asc

  @doc """
  Returns the list of movies.

  ## Examples

      iex> list_movies()
      [%Movie{}, ...]

  """
  def list_movies, do: {Repo.all(base_query), count_movies(base_query)}
  def list_movies(filter = %{}) do
    query = base_query
      |> with_search(filter)

      # A paginação é feita depois para não influenciar na contagem
    count = count_movies(query)

    query = query
      |> with_pagination(filter)
      |> with_sort(filter)

    movies = query |> Repo.all
    {movies, count}
  end
  # def list_movies(filter = %{}) do
  #   query = base_query
  #
  #   query = case filter do
  #     %{title: _t} ->
  #       query |> with_search filter
  #       %{} -> query
  #   end
  #
  #   count = count_movies(query)
  #
  #   # A paginação é feita depois para não influenciar na contagem
  #   query = case filter do
  #     %{limit: _l, page: _p} ->
  #       query |> with_pagination filter
  #     %{} -> query
  #   end
  #
  #   movies = query |> Repo.all
  #
  #   {movies, count}
  # end

  def count_movies(query), do: Repo.aggregate(query, :count, :id)

  @doc """
  Gets a single movie.

  Raises `Ecto.NoResultsError` if the Movie does not exist.

  ## Examples

      iex> get_movie!(123)
      %Movie{}

      iex> get_movie!(456)
      ** (Ecto.NoResultsError)

  """
  # def get_movie!(id), do: Repo.get!(Movie, id)
  def get_movie!(id), do: Repo.get!(Movie, id) |> Repo.preload([{:characters, :actor}, :languages, :directors, :genres, :writers, :companies])


  @doc """
  Returns the list of movies_characters.

  ## Examples

      iex> list_movies_characters()
      [%Character{}, ...]

  """
  def list_movies_characters do
    Repo.all(Character)
  end

  @doc """
  Gets a single character.

  Raises `Ecto.NoResultsError` if the Character does not exist.

  ## Examples

      iex> get_character!(123)
      %Character{}

      iex> get_character!(456)
      ** (Ecto.NoResultsError)

  """
  def get_character!(id), do: Repo.get!(Character, id)
end
