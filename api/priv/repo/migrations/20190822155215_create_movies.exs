defmodule Gradi.Repo.Migrations.CreateMovies do
  use Ecto.Migration

  def change do
    create table(:movies) do
      add :imdb_id, :varchar, size: 10
      add :title, :varchar, size: 125
      add :classification, :integer
      add :description, :text
      add :release_date, :date
      add :revenue, :float
      add :poster, :string
      timestamps()
    end
  end
end
