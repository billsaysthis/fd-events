defmodule FdEvents.Endpoint do
  use Phoenix.Endpoint, otp_app: :fd_events

  plug Plug.Static,
    at: "/", from: :fd_events

  plug Plug.Logger

  # Code reloading will only work if the :code_reloader key of
  # the :phoenix application is set to true in your config file.
  plug Phoenix.CodeReloader

  plug Plug.Parsers,
    parsers: [:urlencoded, :multipart, :json],
    pass: ["*/*"],
    json_decoder: Poison

  plug Plug.MethodOverride
  plug Plug.Head

  plug Plug.Session,
    store: :cookie,
    key: "_fd_events_key",
    signing_salt: "3eZS55TH",
    encryption_salt: "7b6ct87k"

  plug :router, FdEvents.Router
end
