defmodule Gradi.Writers.Writer do
  use Ecto.Schema
  import Ecto.Changeset

  schema "writers" do
    field :name, :string
    many_to_many :movies, Gradi.Movies.Movie, join_through: "movies_writers"

    timestamps()
  end

  @doc false
  def changeset(writer, attrs) do
    writer
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
