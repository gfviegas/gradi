defmodule Gradi.Repo.Migrations.CreateMoviesCharacters do
  use Ecto.Migration

  def change do
    create table(:movies_characters) do
      add :character, :varchar, size: 150
      add :protagonist, :boolean
      add :movie_id, references(:movies)
      add :actor_id, references(:actors)
    end

    create unique_index(:movies_characters, [:movie_id, :actor_id])
  end
end
