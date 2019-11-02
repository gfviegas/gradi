# Controlador do upload dos filmes
defmodule GradiWeb.MoviesController do
  use GradiWeb, :controller
  alias GradiValidation.XMLSchema

  def movies(conn, %{"movie" => file}) do
    IO.inspect file.path
    case XMLSchema.validate(file.path, :movie) do
      # TODO: pegar o novo arquivo e fazer o resto do fluxo.
      {:ok, new_file} -> conn |> send_resp(201, "OK!")
      {:error, _} -> conn |> send_resp(409, "Erro")
    end
  end

end