defmodule Gradi.Repo.Migrations.CreateMoviesGenres do
  use Ecto.Migration

  def change do
    create table(:movies_genres, primary_key: false) do
      add :movie_id, references(:movies)
      add :genre_id, references(:genres)
    end

    create unique_index(:movies_genres, [:movie_id, :genre_id])
  end
end
