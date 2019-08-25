defmodule Gradi.Repo.Migrations.CreateMoviesWriters do
  use Ecto.Migration

  def change do
    create table(:movies_writers, primary_key: false) do
      add :movie_id, references(:movies)
      add :writer_id, references(:writers)
    end

    create unique_index(:movies_writers, [:movie_id, :writer_id])
  end
end
