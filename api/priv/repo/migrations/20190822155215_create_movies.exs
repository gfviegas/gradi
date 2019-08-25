defmodule Gradi.Repo.Migrations.CreateMovies do
  use Ecto.Migration

  def change do
    create table(:movies) do
      add :imdb_id, :string
      add :title, :string
      add :classification, :integer
      add :description, :string
      add :release_date, :date
      add :revenue, :float
      add :poster, :string
      timestamps()
    end
  end
end
