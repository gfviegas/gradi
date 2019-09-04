defmodule GradiGraphql.Schema.SeriesSpinoff do
  use Absinthe.Schema.Notation

  object :series_spinoff do
    field :id, :id
    field :imdb_id, :id
    field :title, :string
  end
end
