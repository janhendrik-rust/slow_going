defmodule SlowGoing.Repo do
  use Ecto.Repo,
    otp_app: :slow_going,
    adapter: Ecto.Adapters.Postgres
end
