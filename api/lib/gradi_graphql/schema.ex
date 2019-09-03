defmodule GradiGraphql.Schema do
  use Absinthe.Schema

  import_types(Absinthe.Type.Custom)
  import_types(GradiGraphql.Schema.{Actor, Author, Movie, Company, MovieCharacter, Writer})

  query do
    field :all_movies, :movie |> list_of do
      resolve(&GradiGraphql.MoviesResolver.all_movies/3)
    end
  end
end
