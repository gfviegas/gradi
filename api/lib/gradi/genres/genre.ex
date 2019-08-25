defmodule Gradi.Genres.Genre do
  use Ecto.Schema
  import Ecto.Changeset

  schema "genres" do
    field :name, :string
    many_to_many :movies, Gradi.Movies.Movie, join_through: "movies_genres"
    timestamps()
  end

  @doc false
  def changeset(genre, attrs) do
    genre
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
