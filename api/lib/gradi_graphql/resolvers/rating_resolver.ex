defmodule GradiGraphql.RatingResolver do
  def resolve_rating(%{imdb_id: imdb_id}, _args, _info) do
    {:ok, rating} = Gradi.Omdb.fetch_rating(imdb_id)
    {:ok, rating |> String.to_float}
  end
end
