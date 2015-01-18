use Mix.Config

config :fd_events, FdEvents.Endpoint,
  http: [port: System.get_env("PORT") || 4001]
