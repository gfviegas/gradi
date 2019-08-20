defmodule Gradi.Repo do
  use Ecto.Repo,
    otp_app: :gradi,
    adapter: Ecto.Adapters.MySQL
end
