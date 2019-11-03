# Controlador do upload das séries
defmodule GradiWeb.CrawlerController do
  use GradiWeb, :controller
  alias GradiValidation.XMLSchema
  alias GradiWeb.XMLMapper

  def crawler(conn, %{"crawler" => file}) do
    IO.inspect file.path
    # file_obj = file |> Base.decode64! |> String.to_char_list |> :xmerl_scan.string
    case XMLSchema.validate(file.path, :series) do
      {:ok, new_file} ->
        case new_file |> XMLMapper.map_series |> Gradi.Series.insert_series do
          {:ok, _id} -> conn  |> send_resp(201, "OK")
          {:error, _id} -> conn  |> send_resp(409, "Erro")
        end
      {:error, _} -> conn |> send_resp(409, "Erro")
    end
  end

end
