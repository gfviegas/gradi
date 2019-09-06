defmodule Gradi.Movies do
  @moduledoc """
  The Movies context.
  """

  import Ecto.Query, warn: false
  alias Gradi.Repo

  alias Gradi.Movies.Movie

  defp base_query, do: from m in Movie, preload: [{:characters, :actor}, :languages, :directors, :genres, :writers, :companies]

  defp with_pagination(query, %{limit: limit, page: page}) do
    from(m in query, limit: ^limit, offset: ^((page-1) * limit))
  end

  defp with_search(query, %{title: title}) do
    from(m in query, where: like(m.title, ^"%#{title}%"))
  end

  @doc """
  Returns the list of movies.

  ## Examples

      iex> list_movies()
      [%Movie{}, ...]

  """
  def list_movies do
    Repo.all(from m in Movie, preload: [{:characters, :actor}, :languages, :directors, :genres, :writers, :companies])
  end

  def list_movies(filter = %{limit: limit, page: page, title: title}) do
    base_query
      |> with_search(filter)
      |> with_pagination(filter)
      |> Repo.all
  end
  def list_movies(filter = %{limit: limit, page: page}) do
    base_query
      |> with_pagination(filter)
      |> Repo.all
  end
  def list_movies(filter = %{title: title}) do
    base_query
      |> with_search(filter)
      |> Repo.all
  end

  def count_movies do
    Repo.aggregate(Movie, :count, :id)
  end

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
  Creates a movie.

  ## Examples

      iex> create_movie(%{field: value})
      {:ok, %Movie{}}

      iex> create_movie(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_movie(attrs \\ %{}) do
    %Movie{}
    |> Movie.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a movie.

  ## Examples

      iex> update_movie(movie, %{field: new_value})
      {:ok, %Movie{}}

      iex> update_movie(movie, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_movie(%Movie{} = movie, attrs) do
    movie
    |> Movie.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Movie.

  ## Examples

      iex> delete_movie(movie)
      {:ok, %Movie{}}

      iex> delete_movie(movie)
      {:error, %Ecto.Changeset{}}

  """
  def delete_movie(%Movie{} = movie) do
    Repo.delete(movie)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking movie changes.

  ## Examples

      iex> change_movie(movie)
      %Ecto.Changeset{source: %Movie{}}

  """
  def change_movie(%Movie{} = movie) do
    Movie.changeset(movie, %{})
  end

  alias Gradi.Movies.Character

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

  @doc """
  Creates a character.

  ## Examples

      iex> create_character(%{field: value})
      {:ok, %Character{}}

      iex> create_character(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_character(attrs \\ %{}) do
    %Character{}
    |> Character.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a character.

  ## Examples

      iex> update_character(character, %{field: new_value})
      {:ok, %Character{}}

      iex> update_character(character, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_character(%Character{} = character, attrs) do
    character
    |> Character.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Character.

  ## Examples

      iex> delete_character(character)
      {:ok, %Character{}}

      iex> delete_character(character)
      {:error, %Ecto.Changeset{}}

  """
  def delete_character(%Character{} = character) do
    Repo.delete(character)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking character changes.

  ## Examples

      iex> change_character(character)
      %Ecto.Changeset{source: %Character{}}

  """
  def change_character(%Character{} = character) do
    Character.changeset(character, %{})
  end
end
