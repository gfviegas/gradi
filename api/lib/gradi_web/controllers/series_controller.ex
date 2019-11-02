# Controlador do upload das séries
defmodule GradiWeb.SeriesController do
  use GradiWeb, :controller

  def series(conn, {:ok, new_file}) do
    conn
    |> send_resp(202, "Sucesso")
  end

  def series(conn, {:error, err}) do
    conn
    |> send_resp(402, "Fracasso")
  end

end
