defmodule Gradi.Series do

  def format_map(resource = %BSON.ObjectId{}), do: resource

  def format_map(resource) when is_list(resource) do
    IO.inspect resource
    resource |> Enum.map_every(1, &format_map/1)
  end

  def format_map(resource = %{}) do
    resource |> Map.new(fn {k, v} -> {String.to_atom(k), format_map(v)} end)
  end

  def format_map(resource), do: resource

  def list_series do
    Mongo.find(:mongo, "series", %{})
      |> Enum.to_list
      |> Enum.map_every(1, &format_map/1)
  end

  def list_series(filter = %{limit: l, page: p}) do
    Mongo.find(:mongo, "series", %{}).skip(l*(p-1)).limit(l)
      |> Enum.to_list
      |> Enum.map_every(1, &format_map/1)
  end

  # Não sei se isso funciona
  # def count_series do
  #   Repo.aggregate(Series, :count, :id)
  # end

end
