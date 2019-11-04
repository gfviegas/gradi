# Controlador do upload das séries
defmodule GradiWeb.SeriesController do
  use GradiWeb, :controller
  alias GradiValidation.XMLSchema
  alias GradiWeb.XMLMapper

  defp insert_series(file) do
    %{series: series} = file |> XMLMapper.map_series()
    series |> Gradi.Series.insert_series()
  end

  def series(conn, %{"series" => file}) do
    case XMLSchema.validate(file.path, :series) do
      {:ok, new_file} ->
        case insert_series(new_file) do
          {:ok, _} -> conn |> send_resp(201, "OK!")
          {:error, _reason} -> conn |> send_resp(500, "Erro na inserção")
        end

      {:error, _} ->
        conn |> send_resp(409, "Erro")
    end
  end
end
