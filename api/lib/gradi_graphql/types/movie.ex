defmodule GradiGraphql.Schema.Movie do
  use Absinthe.Schema.Notation
  alias GradiGraphql.Schema
  alias GradiGraphql.MoviesResolver

  object :movie do
    field :id, :id
    field :date_created, non_null(:datetime)
    field :date_modified, non_null(:datetime)
    field :title, non_null(:string)
    field :description, :string
    field :authors, list_of(:author)
    field :rating, :float, resolve: &MoviesResolver.resolve_rating/3
  end
end
