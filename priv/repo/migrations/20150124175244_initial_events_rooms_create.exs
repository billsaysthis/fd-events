defmodule FdEvents.Repo.Migrations.InitialEventsRoomsCreate do
  use Ecto.Migration

  def up do
    "CREATE TABLE events_rooms( \
      id serial primary key, \
      event_id integer, \
      room_id integer)"
  end

  def down do
    "DROP TABLE events_rooms"
  end
end
