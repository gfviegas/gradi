defmodule GradiGraphql.Schema do
  use Absinthe.Schema
  alias GradiGraphql.MoviesResolver
  alias GradiGraphql.SeriesResolver

  import_types(Absinthe.Type.Custom)
  import_types(GradiGraphql.Schema.{Movie, Company, MovieCharacter, Property, Series, SeriesActor, SeriesSpinoff})

  object :movies_list do

    field :movies, :movie |> list_of
    field :total_count, :integer |> non_null
  end

  query do
    field :movies_list, :movies_list do
      arg :title, :string
      arg :page, :integer
      arg :limit, :integer
      arg :sort, :string
      arg :sort_direction, :string
      resolve &MoviesResolver.list_movies/3
    end

    field :all_movies, :movie |> list_of do
      resolve(&MoviesResolver.all_movies/3)
    end

    field :all_series, :series |> list_of do
      resolve(&SeriesResolver.all_series/3)
    end

    field :movie, :movie do
      arg :id, :id
      resolve &MoviesResolver.get_movie/3
    end
  end
end
