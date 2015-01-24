defmodule FdEvents.Repo.Migrations.InitialSettingsCreate do
  use Ecto.Migration

  def up do
    "CREATE TABLE settings(
      id  primary key, \
      group varchar(255), \
      name varchar(255), \
      val varchar(255)
    )"
  end

  def down do
    "DROP TABLE settings"
  end
end
