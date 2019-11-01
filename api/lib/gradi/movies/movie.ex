defmodule Gradi.Movies.Movie do
  use Ecto.Schema
  import Ecto.Changeset

  schema "movies" do
    field :imdb_id, :string
    field :title, :string
    field :classification, :integer
    field :description, :string
    field :release_date, :date
    field :revenue, :float
    field :poster, :string

    has_many :characters, Gradi.Movies.Character
    many_to_many :languages, Gradi.Languages.Language, join_through: "movies_languages"
    many_to_many :companies, Gradi.Companies.Company, join_through: "movies_companies"
    many_to_many :directors, Gradi.Directors.Director, join_through: "movies_directors"
    many_to_many :genres, Gradi.Genres.Genre, join_through: "movies_genres"
    many_to_many :writers, Gradi.Writers.Writer, join_through: "movies_writers"
    timestamps()
  end

  @doc false
  def changeset(movie, attrs) do
    fields = [:imdb_id, :title, :classification, :description, :release_date, :revenue]

    movie
    |> cast(attrs, fields)
    |> validate_required(fields)
  end
end
