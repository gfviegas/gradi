defmodule GradiGraphql.Schema.Movie do
  use Absinthe.Schema.Notation
  alias GradiGraphql.Schema
  alias GradiGraphql.RatingResolver
  alias GradiGraphql.MoviesResolver

  object :movie do
    field :id, :id
    field :imdb_id, :id
    field :title, non_null(:string)
    field :description, :string
    field :revenue, :float
    field :poster, :string
    field :genres, list_of(:property)
    field :languages, list_of(:property)
    field :authors, list_of(:property)
    field :directors, list_of(:property)
    field :writers, list_of(:property)
    field :characters, list_of(:movie_character)
    field :rating, :float, resolve: &RatingResolver.resolve_rating/3
    field :date_released, non_null(:date), resolve: &MoviesResolver.resolve_date_released/3
    field :date_created, non_null(:naive_datetime), resolve: &MoviesResolver.resolve_date_created/3
    field :date_modified, non_null(:naive_datetime), resolve: &MoviesResolver.resolve_date_modified/3
  end
end
