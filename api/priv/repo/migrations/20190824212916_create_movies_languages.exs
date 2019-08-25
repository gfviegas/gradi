defmodule Gradi.Repo.Migrations.CreateMoviesLanguages do
  use Ecto.Migration

  def change do
    create table(:movies_languages, primary_key: false) do
      add :movie_id, references(:movies)
      add :language_id, references(:languages)
    end

    create unique_index(:movies_languages, [:movie_id, :language_id])
  end
end
