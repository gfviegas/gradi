defmodule Gradi.Repo.Migrations.CreateGenres do
  use Ecto.Migration

  def change do
    create table(:genres) do
      add :name, :varchar, size: 50

      timestamps()
    end
  end
end
