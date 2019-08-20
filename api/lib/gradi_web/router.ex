defmodule GradiWeb.Router do
  use GradiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", GradiWeb do
    pipe_through :api
  end
end
