defmodule Gradi.Repo.Migrations.CreateActors do
  use Ecto.Migration

  def change do
    create table(:actors) do
      add :name, :varchar, size: 150

      timestamps()
    end

  end
end
