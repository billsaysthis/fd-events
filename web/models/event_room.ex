defmodule EventRoom do
  use Ecto.Model

  schema "events_rooms" do
    timestamps
    
    belongs_to :event, Event
    belongs_to :room, Room
  end
end