use Mix.Config

# Configure your database
config :kiosk, Kiosk.Repo,
  adapter: Ecto.Adapters.Postgres,
  database: "kitchen_kiosk_test",
  username: "postgres",
  password: "postgres123",
  hostname: "192.168.1.47"
  pool: Ecto.Adapters.SQL.Sandbox,
  ownership_timeout: 60_000
