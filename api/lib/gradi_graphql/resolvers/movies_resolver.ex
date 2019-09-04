defmodule GradiGraphql.MoviesResolver do
  alias Gradi.Movies
  alias Gradi.Movies.Movie

  def resolve_date_released(%{release_date: date}, _a, _i), do: {:ok, date}
  def resolve_date_created(%{inserted_at: date}, _a, _i), do: {:ok, date}
  def resolve_date_modified(%{updated_at: date}, _a, _i), do: {:ok, date}

  def format_movie(movie) do
    Map.merge(movie, %{
      date_created: Map.fetch!(movie, :inserted_at),
      date_modified: Map.fetch!(movie, :updated_at),
      date_released: Map.fetch!(movie, :release_date)
    })
  end

  def all_movies(_r, _a, _i) do
    movies = Movies.list_movies()
    {:ok, movies}
  end

  def load_movies(filter = %{}), do: Movies.list_movies filter
  def load_movies(filter), do: Movies.list_movies

  def list_movies(_r, filter, _i) do
    movies = load_movies(filter)
    {:ok, %{
      movies: movies,
      total_count: Movies.count_movies()
    }}
  end
end
