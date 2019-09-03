defmodule GradiGraphql.MoviesResolver do
  alias Gradi.Movies
  alias Gradi.Movies.Movie

  def resolve_rating(%Movie{imdb_id: imdb_id}, _args, _info) do
    {:ok, rating} = Gradi.Omdb.fetch_rating(imdb_id)
    {:ok, rating |> String.to_float}
  end

  def all_movies(_root, _args, _info) do
     movies = Movies.list_movies()
     movies['genre'] = 'Action'

    {:ok, movies}
  end
end

/* http://localhost:4000/graphiql */
