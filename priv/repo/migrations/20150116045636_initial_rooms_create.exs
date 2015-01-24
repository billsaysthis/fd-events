defmodule FdEvents.Repo.Migrations.InitialRoomsCreate do
  use Ecto.Migration

  def up do
    create table(:rooms) do
      add :name, :string, size: 255
      add :capacity, :integer
      add :active, :boolean
      
      timestamps
    end
  end

  def down do
    drop table(:rooms)
  end
end
