defmodule Gradi.Repo.Migrations.CreateWriters do
  use Ecto.Migration

  def change do
    create table(:writers) do
      add :name, :varchar, size: 150

      timestamps()
    end

  end
end
