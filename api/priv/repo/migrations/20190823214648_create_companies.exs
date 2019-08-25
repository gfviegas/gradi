defmodule Gradi.Repo.Migrations.CreateCompanies do
  use Ecto.Migration

  def change do
    create table(:companies) do
      add :name, :varchar, size: 150
      add :country, :varchar, size: 150
      add :logo, :string

      timestamps()
    end

  end
end
