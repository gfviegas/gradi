defmodule GradiGraphql.Schema.SeriesActor do
  use Absinthe.Schema.Notation

  object :series_actor do
    field :name, :string |> non_null
    field :character, :string |> non_null
    field :protagonist, :boolean
  end
end
