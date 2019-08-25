defmodule Gradi.Repo.Migrations.CreateDirectors do
  use Ecto.Migration

  def change do
    create table(:directors) do
      add :name, :varchar, size: 150

      timestamps()
    end

  end
end
