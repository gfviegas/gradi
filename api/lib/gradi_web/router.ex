defmodule GradiWeb.Router do
  use GradiWeb, :router

  pipeline :api do
    plug :accepts, ["json", "xml"]
  end

  # scope "/api", GradiWeb do
  #   pipe_through :api
  # end

  forward "/api", Absinthe.Plug,
    schema: GradiGraphql.Schema

  forward "/graphiql", Absinthe.Plug.GraphiQL,
    schema: GradiGraphql.Schema,
    interface: :simple,
    context: %{pubsub: GradiWeb.Endpoint}

  post "/movies", MoviesController, :movies

  post "/series", SeriesController, :series

end
