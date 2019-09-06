defmodule GradiGraphql.MoviesResolver do
  alias Gradi.Movies
  alias Gradi.Movies.Movie

  def resolve_date_released(%{release_date: date}, _a, _i), do: {:ok, date}
  def resolve_date_created(%{inserted_at: date}, _a, _i), do: {:ok, date}
  def resolve_date_modified(%{updated_at: date}, _a, _i), do: {:ok, date}

  def all_movies(_r, _a, _i) do
    movies = Movies.list_movies()
    {:ok, movies}
  end

  def load_movies(filter = %{}), do: Movies.list_movies filter
  def load_movies(filter), do: Movies.list_movies

  def list_movies(_r, filter, _i) do
    {movies, total_count} = load_movies(filter)
    {:ok, %{movies: movies, total_count: total_count}}
  end

  def get_movie(_r, %{id: id}, _i) do
    {:ok, Movies.get_movie!(id)}
  end
end
