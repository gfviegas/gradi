defmodule Gradi.Omdb do
  @key "82628bfb"

  def fetch_rating(imdb_id) do
    url = "http://www.omdbapi.com/?apikey=#{@key}&i=#{imdb_id}"
    response = HTTPoison.get(url)
    IO.inspect response
    case response do
      {:ok, %HTTPoison.Response{status_code: 200, body: body}} ->
        decoded = body |> Poison.decode!(keys: :atoms)
        {:ok, decoded[:imdbRating]}
      {:ok, %HTTPoison.Response{status_code: 404}} ->
        {:error, :not_found}
      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, reason}
    end
  end
end
