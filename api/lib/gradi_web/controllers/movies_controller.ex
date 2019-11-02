# Controlador do upload dos filmes
defmodule GradiWeb.MoviesController do
  use GradiWeb, :controller

  def movies(conn, {:ok, new_file}) do
    conn
    |> send_resp(202, "Sucesso")
  end

  def movies(conn, {:error, err}) do
    conn
    |> send_resp(402, "Sucesso")
  end

end
