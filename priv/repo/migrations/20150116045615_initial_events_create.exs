defmodule FdEvents.Repo.Migrations.InitialEventsCreate do
  use Ecto.Migration

  def up do
    "CREATE TABLE events( \
      id serial primary key, \
      name varchar(255), \
      user_id integer, \
      rooms varchar(255), \
      event_type varchar(20), \
      attendance integer, \
      public_url varchar(255), \
      fee varchar(10), \
      description text, \
      notes varchar(1000), \
      status varchar(20), \
      start_at timestamp, \
      finish_at timestamp, \
      setup_time integer, \
      teardown_time integer, \
      created_at timestamp, \
      updated_at timestamp)"
  end

  def down do
    "DROP TABLE events"
  end
end
