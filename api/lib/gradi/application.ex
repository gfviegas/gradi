defmodule Gradi.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false
  use Application
  import Supervisor.Spec

  def start(_type, _args) do
    mongo_config = Application.get_env(:gradi, :mongo_config)

    # List all child processes to be supervised
    children = [
      # Start the Ecto repository
      Gradi.Repo,
      # Start the endpoint when the application starts
      GradiWeb.Endpoint,
      # Starts a worker by calling: Gradi.Worker.start_link(arg)
      # {Gradi.Worker, arg},

      # Start the MongoDB Connection
      worker(Mongo, [mongo_config])
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Gradi.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    GradiWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
