defmodule FdEvents.Repo.Migrations.InitialUsersCreate do
  use Ecto.Migration

  def up do
    "CREATE TABLE users( \
      id serial primary key, \
      first_name varchar(255), \
      last_name varchar(255), \
      email varchar(255), \
      joined_at timestamp, \
      active boolean, \
      created_at timestamp, \
      updated_at timestamp)"
  end

  def down do
    "DROP TABLE users"
  end
end
