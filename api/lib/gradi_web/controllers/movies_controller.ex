# Controlador do upload dos filmes
defmodule GradiWeb.MoviesController do
  use GradiWeb, :controller

  alias GradiValidation.XMLSchema
  alias GradiWeb.XMLMapper
  alias Gradi.Repo

  defp insert_movie(movie) do
    IO.inspect movie
  end

  def insert_movies(file) do
    movies = file |> XMLMapper.map_movies
    IO.inspect movies

    {:error, ""}
  end

  def movies(conn, %{"movie" => file}) do
    case XMLSchema.validate(file.path, :movie) do
      # TODO: pegar o novo arquivo e fazer o resto do fluxo.
      {:ok, new_file} ->
        case insert_movies new_file do
          {:ok, _movies} -> conn |> send_resp(201, "OK!")
          {:error, _reason} -> conn |> send_resp(500, "Erro na inserção")
        end

      {:error, _} -> conn |> send_resp(409, "Erro")
    end
  end

end
