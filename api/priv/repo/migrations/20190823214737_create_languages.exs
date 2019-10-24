defmodule Gradi.Repo.Migrations.CreateLanguages do
  use Ecto.Migration

  def change do
    create table(:languages) do
      add :name, :varchar, size: 20

      timestamps()
    end
  end
end
