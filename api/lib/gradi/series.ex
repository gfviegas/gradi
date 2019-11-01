defmodule Gradi.Series do
  defp format_map(resource = %BSON.ObjectId{}), do: resource

  defp format_map(resource) when is_list(resource) do
    IO.inspect(resource)
    resource |> Enum.map_every(1, &format_map/1)
  end

  defp format_map(resource = %{}) do
    resource |> Map.new(fn {k, v} -> {String.to_atom(k), format_map(v)} end)
  end

  defp format_map(resource), do: resource

  # Busca por título
  defp with_search(query, %{title: title}) do
    pattern = %BSON.Regex{pattern: "#{title}", options: "i"}
    Map.merge(query, %{title: pattern})
  end

  defp with_search(query, _), do: query

  # Contagem de recursos
  defp count_series(query), do: Mongo.count_documents(:mongo, "series", query)

  # Paginação
  defp with_pagination(options, %{limit: limit, page: page}) do
    [{:limit, limit}, {:skip, (page - 1) * limit} | options]
  end

  defp with_pagination(options, _), do: options

  # Ordenação
  defp with_sort(options, filter = %{sort: order_field}) do
    field_atom = sort_field(order_field)
    direction = sort_direction(filter)
    sort = Map.put(%{}, field_atom, direction)
    [{:sort, sort} | options]
  end

  defp with_sort(options, _), do: options

  defp sort_field(field), do: Macro.underscore(field) |> String.to_existing_atom()
  defp sort_direction(%{sort_direction: "asc"}), do: 1
  defp sort_direction(%{sort_direction: "desc"}), do: -1
  defp sort_direction(_), do: 1

  def list_series do
    Mongo.find(:mongo, "series", %{})
    |> Enum.to_list()
    |> Enum.map_every(1, &format_map/1)
  end

  def list_series(filter = %{}) do
    query =
      %{}
      |> with_search(filter)

    # A paginação é feita depois para não influenciar na contagem
    {:ok, count} = count_series(query)

    options =
      []
      |> with_pagination(filter)
      |> with_sort(filter)

    series =
      case options do
        [] -> Mongo.find(:mongo, "series", query)
        _ -> Mongo.find(:mongo, "series", query, options)
      end

    series =
      series
      |> Enum.to_list()
      |> Enum.map_every(1, &format_map/1)

    {series, count}
  end

  def get_serie!(id) when is_binary(id) do
    get_serie!(id |> BSON.ObjectId.decode!())
  end

  def get_serie!(id = %BSON.ObjectId{}) do
    Mongo.find_one(:mongo, "series", %{_id: id}) |> format_map
  end
end
