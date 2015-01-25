defmodule FdEvents.EventController do
  use Phoenix.Controller
  import Ecto.Query

  plug :action

  def all(conn, _params) do
    events = FdEvents.Repo.all(Event)
    IO.puts "Events: #{inspect events}"
    render conn, "index.html", events: events
  end
end
