defmodule GradiGraphql.Schema do
  use Absinthe.Schema

  import_types(Absinthe.Type.Custom)
  import_types(GradiGraphql.Schema.{Movie, Company, MovieCharacter, Property, Series, SeriesActor, SeriesSpinoff})

  query do
    field :all_movies, :movie |> list_of do
      resolve(&GradiGraphql.MoviesResolver.all_movies/3)
    end

    field :all_series, :series |> list_of do
      resolve(&GradiGraphql.SeriesResolver.all_series/3)
    end
  end
end
