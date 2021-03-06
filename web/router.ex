defmodule FdEvents.Router do
  use Phoenix.Router

  pipeline :browser do
    plug :accepts, ~w(html)
    plug :fetch_session
  end

  pipeline :api do
    plug :accepts, ~w(json)
  end

  scope "/", FdEvents do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end
  
  scope "/events" do
    pipe_through :browser
    
    get "/all", FdEvents.EventController, :all
  end

  # Other scopes may use custom stacks.
  # scope "/api", FdEvents do
  #   pipe_through :api
  # end
end
