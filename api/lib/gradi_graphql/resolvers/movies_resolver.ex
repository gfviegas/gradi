defmodule GradiGraphql.MoviesResolver do
  alias Gradi.Movies
  alias Gradi.Movies.Movie

  def resolve_rating(%Movie{imdb_id: imdb_id}, _args, _info) do
    {:ok, rating} = Gradi.Omdb.fetch_rating(imdb_id)
    {:ok, rating |> String.to_float}
  end

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
