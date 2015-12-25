use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :cortex, Cortex.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :cortex, Cortex.Repo,
  adapter: Sqlite.Ecto,
  database: "db/cortex_test.sqlite",
  pool: Ecto.Adapters.SQL.Sandbox
