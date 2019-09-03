defmodule GradiGraphql.Schema.MovieCharacter do
  use Absinthe.Schema.Notation

  object :movie_character do
    field :id, :id
    field :name, :string
    field :protagonist, :boolean
    field :actor, :actor
  end
end
