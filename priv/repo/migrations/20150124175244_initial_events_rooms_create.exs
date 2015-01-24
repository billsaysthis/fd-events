defmodule FdEvents.Repo.Migrations.InitialEventsRoomsCreate do
  use Ecto.Migration

  def up do
    create table(:events_rooms) do
      add :event_id, :integer
      add :room_id, :integer

      timestamps
    end
  end

  def down do
    drop table(:events_rooms)
  end
end
