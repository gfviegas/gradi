defmodule GradiGraphql.Schema.Movie do
  use Absinthe.Schema.Notation
  alias GradiGraphql.Schema
  alias GradiGraphql.MoviesResolver

  object :movie do
    field :id, :id
    field :imdb_id, :id
    field :title, non_null(:string)
    field :description, :string
    field :genres, list_of(:string)
    field :languages, list_of(:string)
    field :authors, list_of(:author)
    field :writers, list_of(:writer)
    field :characters, list_of(:movie_character)
    field :rating, :float, resolve: &MoviesResolver.resolve_rating/3
    field :date_released, non_null(:date)
    field :date_created, non_null(:naive_datetime)
    field :date_modified, non_null(:naive_datetime)
  end
end
