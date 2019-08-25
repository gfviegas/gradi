defmodule Gradi.Repo.Migrations.CreateMoviesCompanies do
  use Ecto.Migration

  def change do
    create table(:movies_companies, primary_key: false) do
      add :movie_id, references(:movies)
      add :company_id, references(:companies)
    end

    create unique_index(:movies_companies, [:movie_id, :company_id])
  end
end
