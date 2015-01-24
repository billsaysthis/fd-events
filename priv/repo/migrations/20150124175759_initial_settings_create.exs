defmodule FdEvents.Repo.Migrations.InitialSettingsCreate do
  use Ecto.Migration

  def up do
    create table(:settings) do
      add :type,  :string, size: 40
      add :name,  :string, size: 255
      add :val,   :string, size: 255

      timestamps
    end
  end


  def down do
    drop table(:settings)
  end
end
