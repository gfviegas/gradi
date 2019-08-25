defmodule Gradi.Companies.Company do
  use Ecto.Schema
  import Ecto.Changeset

  schema "companies" do
    field :country, :string
    field :logo, :string
    field :name, :string

    many_to_many :movies, Gradi.Movies.Movie, join_through: "movies_companies"
    timestamps()
  end

  @doc false
  def changeset(company, attrs) do
    company
    |> cast(attrs, [:name, :country, :logo])
    |> validate_required([:name, :country, :logo])
  end
end
