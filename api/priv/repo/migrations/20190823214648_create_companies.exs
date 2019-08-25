defmodule Gradi.Repo.Migrations.CreateCompanies do
  use Ecto.Migration

  def change do
    create table(:companies) do
      add :name, :string
      add :country, :string
      add :logo, :string

      timestamps()
    end

  end
end
