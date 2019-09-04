defmodule GradiGraphql.MoviesResolver do
  alias Gradi.Movies
  alias Gradi.Movies.Movie

  def format_movie(movie) do
    Map.merge(movie, %{
      date_created: Map.fetch!(movie, :inserted_at),
      date_modified: Map.fetch!(movie, :updated_at),
      date_released: Map.fetch!(movie, :release_date)
    })
  end

  def all_movies(_r, _a, _i) do
    movies = Movies.list_movies()
    movies = Enum.map_every(movies, 1, &format_movie/1)
    {:ok, movies}
  end
end
