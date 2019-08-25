defmodule GradiGraphql.Schema do
  use Absinthe.Schema

  import_types(Absinthe.Type.Custom)
  import_types(GradiGraphql.Schema.{Author, Movie})

  query do
    field :all_movies, :movie |> list_of do
      resolve(&GradiGraphql.MoviesResolver.all_movies/3)
    end
  end
end
