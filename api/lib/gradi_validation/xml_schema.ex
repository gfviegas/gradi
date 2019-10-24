defmodule GradiValidation.XMLSchema do
  @movies_schema_file "priv/validation/movies_schema.xsd"
  @series_schema_file "priv/validation/series_schema.xsd"

  # Carrega o schema pra o tipo especifico de recurso
  def load_schema(:movie), do: load_schema @movies_schema_file
  def load_schema(:series), do: load_schema @series_schema_file
  def load_schema(schema_file) when is_binary(schema_file) do
    schema_path = Path.join(File.cwd!(), schema_file)

    case :xmerl_xsd.process_schema(schema_path |> to_charlist) do
      {:error, err} -> {:error, err}
      {:ok, s} -> {:ok, s}
    end
  end
  def load_schema(_), do: {:error, :invalid_type}

  # Carrega e interpreta o arquivo XML
  def load_file(file_path) do
    case :xmerl_scan.file(file_path) do
      {:error, err} -> {:error, err}
      {file, _} -> {:ok, file}
    end
  end

  # Valida se o XML é valido para o recurso passado
  # Através de o caminho de um XML
  def validate(file_path, type) when is_binary(file_path) do
    case load_file(file_path) do
      {:error, err} -> {:error, err}
      {:ok, file} -> validate file, type
    end
  end
  # Através de um arquivo XML de fato
  def validate(file, type) when is_tuple(file) do
    with {:ok, schema} <- load_schema(type) do
      case :xmerl_xsd.validate(file, schema) do
        {:error, err} -> {:error, err}
        {new_file, _} -> {:ok, new_file}
      end
    else
      {:error, err} -> {:error, err}
      _ -> {:error, :file_load_error}
    end
  end
end
