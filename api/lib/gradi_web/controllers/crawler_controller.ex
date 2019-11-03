# Controlador do upload das séries
defmodule GradiWeb.CrawlerController do
  use GradiWeb, :controller
  alias GradiValidation.XMLSchema

  def crawler(conn, %{"crawler" => file}) do
    file_obj = file |> String.to_char_list |> :xmerl_scan.string
    case XMLSchema.validate(file_obj, :crawler) do
      {:ok, new_file} ->
        case Gradi.Series.insert_series(new_file) do
          {:true, _id} -> conn  |> send_resp(201, "OK")
          {:false, _id} -> conn  |> send_resp(409, "Erro")
        end
      {:error, _} -> conn |> send_resp(409, "Erro")
    end
  end

end
