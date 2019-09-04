defmodule GradiGraphql.Schema.Series do
  use Absinthe.Schema.Notation
  alias GradiGraphql.Schema
  alias GradiGraphql.SeriesResolver
  alias GradiGraphql.RatingResolver

  object :series do
    field :id, :id, resolve: &SeriesResolver.resolve_id/3
    field :title, non_null(:string)
    field :date_released, non_null(:date), resolve: &SeriesResolver.resolve_date_release/3
    field :imdb_id, :id
    field :description, :string
    field :classification, :string
    field :genres, :string |> list_of, resolve: &SeriesResolver.resolve_genres/3
    field :writers, :string |> list_of
    field :languages, :string |> list_of
    field :countries, :string |> list_of
    field :poster, :string
    field :runtime, :string
    field :seasons, :integer
    field :actors, :series_actor |> list_of
    field :spinoffs, :series_spinoff |> list_of
    field :rating, :float, resolve: &RatingResolver.resolve_rating/3
  end
end
