# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :fd_events, FdEvents.Endpoint,
  url: [host: "localhost"],
  http: [port: System.get_env("PORT")],
  secret_key_base: "ujW4xoIpDeDlqfAa5KMv7wsNq4QBOv5WRl+6ckvtBbCSdcSW6YMSVpBpPfaYP+Ki",
  debug_errors: false

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

# In your config/config.exs file
config :fd_events, FdEvents.Repo,
  database: "hdEvents",
  username: "bill",
  password: "",
  hostname: "localhost"
