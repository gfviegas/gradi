defmodule GradiGraphql.Schema.MovieCharacter do
  use Absinthe.Schema.Notation
  alias GradiGraphql.CharacterResolver

  object :movie_character do
    field :id, :id
    field :name, :string, resolve: &CharacterResolver.resolve_name/3
    field :protagonist, :boolean
    field :actor, :property
    field :inserted_at, non_null(:datetime)
    field :updated_at, non_null(:datetime)
  end
end
