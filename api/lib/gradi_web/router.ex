defmodule GradiWeb.Router do
  use GradiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", GradiWeb do
    pipe_through :api
  end

  forward "/graphiql", Absinthe.Plug.GraphiQL,
    schema: GradiWeb.Schema,
    interface: :simple,
    context: %{pubsub: GradiWeb.Endpoint}
end
