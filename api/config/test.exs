use Mix.Config

# Configure your database
config :gradi, Gradi.Repo,
  username: "gradi",
  password: "gradi",
  database: "gradi_test",
  hostname: "mysql",
  show_sensitive_data_on_connection_error: true,
  pool_size: 10,
  pool: Ecto.Adapters.SQL.Sandbox

config :gradi, :mongo_config,
  name: :mongo,
  database: "gradi_test",
  seeds: ["mongo"],
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :gradi, GradiWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
