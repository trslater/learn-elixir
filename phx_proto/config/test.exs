import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :phx_proto, PhxProto.Repo,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "phx_proto_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :phx_proto, PhxProtoWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "h1D1F0e3aMn1G5Fs3B/qNgd/8dOi1+DtR3Vze8fgjmKTSP9a3S8KeW3GwzPYmRFK",
  server: false

# In test we don't send emails.
config :phx_proto, PhxProto.Mailer, adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
