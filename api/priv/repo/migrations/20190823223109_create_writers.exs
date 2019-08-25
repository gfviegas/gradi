defmodule Gradi.Repo.Migrations.CreateWriters do
  use Ecto.Migration

  def change do
    create table(:writers) do
      add :name, :string

      timestamps()
    end

  end
end
