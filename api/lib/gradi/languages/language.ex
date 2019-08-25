defmodule Gradi.Languages.Language do
  use Ecto.Schema
  import Ecto.Changeset

  schema "languages" do
    field :name, :string
    many_to_many :movies, Gradi.Movies.Movie, join_through: "movies_languages"
    timestamps()
  end

  @doc false
  def changeset(language, attrs) do
    language
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
