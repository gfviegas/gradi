defmodule Gradi.Repo.Migrations.CreateMoviesCharacters do
  use Ecto.Migration

  def change do
    create table(:movies_characters, primary_key: false) do
      add :character, :string
      add :protagonist, :boolean
      add :movie_id, references(:movies)
      add :actor_id, references(:actors)
    end

    create unique_index(:movies_characters, [:movie_id, :actor_id])
  end
end
