defmodule Gradi.Movies.Character do
  use Ecto.Schema
  import Ecto.Changeset

  schema "movies_characters" do
    field :character, :string
    field :protagonist, :boolean
    belongs_to :movie, Gradi.Movies.Movie, foreign_key: :movie_id
    belongs_to :actor, Gradi.Actors.Actor, foreign_key: :actor_id
  end

  @doc false
  def changeset(character, attrs) do
    character
    |> cast(attrs, [])
    |> validate_required([])
  end
end
