use Mix.Config

config :kiosk, Kiosk.Repo,
  adapter: Ecto.Adapters.Postgres,
  database: "kitchen_kiosk_dev",
  username: "postgres",
  password: "postgres123",
  hostname: "192.168.1.47"