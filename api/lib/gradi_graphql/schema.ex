defmodule GradiGraphql.Schema do
  use Absinthe.Schema

  import_types(Absinthe.Type.Custom)
  import_types(GradiGraphql.Schema.{Movie, Company, MovieCharacter, Property, Series, SeriesActor, SeriesSpinoff})

  object :movies_list do

    field :movies, :movie |> list_of
    field :total_count, :integer |> non_null
  end

  query do
    field :movies_list, :movies_list do
      arg :page, :integer
      arg :limit, :integer
      resolve &GradiGraphql.MoviesResolver.list_movies/3
    end

    field :all_movies, :movie |> list_of do
      resolve(&GradiGraphql.MoviesResolver.all_movies/3)
    end

    field :all_series, :series |> list_of do
      resolve(&GradiGraphql.SeriesResolver.all_series/3)
    end
  end
end
