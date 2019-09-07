defmodule GradiGraphql.SeriesResolver do
  alias Gradi.Series

  def resolve_date_release(%{release_date: date}, _a, _i) do
    {:ok, date |> Date.from_iso8601!}
  end

  def resolve_id(%{_id: id}, _a, _i) do
    {:ok, BSON.ObjectId.encode! id}
  end

  def format_genre(%{name: name}), do: name
  def format_genre(name), do: name

  def resolve_genres(%{genres: genres}, _a, _i) do
    genres = Enum.map_every(genres, 1, &format_genre/1)
    {:ok, genres}
  end

  def all_series(_r, _a, _i) do
    series = Series.list_series()
    {:ok, series}
  end

  def load_series(filter = %{}), do: Series.list_series filter
  def load_series(filter), do: Series.list_series

  def list_series(_r, filter, _i) do
    {series, total_count} = load_series(filter)
    {:ok, %{ series: series, total_count: total_count}}
  end

  def get_series(_r, %{id: id}, _i) do
    {:ok, Series.get_serie!(id)}
  end
end
