use Mix.Config

# Configure your database
config :rumbl, Rumbl.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "rumbl_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# ownership_timeout: 60_000,
# timeout: 60_000

config :pbkdf2_elixir, :rounds, 1
