defmodule FdEvents.Repo.Migrations.InitialUsersCreate do
  use Ecto.Migration

  def up do
    create table(:users) do
      add :first_name, :string, size: 255
      add :last_name, :string, size: 255
      add :email, :string, size: 255
      add :joined_at, :timestamp
      add :active, :boolean
      
      timestamps
    end
  end

  def down do
    drop table(:users)
  end
end
