defmodule FdEvents.Repo.Migrations.InitialEventsCreate do
  use Ecto.Migration

  def up do
    create table(:events) do
      add :name, :string, size: 255
      add :user_id, :integer
      add :second_user_id, :integer
      add :third_user_id, :integer
      add :event_type, :string, size: 20
      add :attendance, :integer
      add :public_url, :string, size: 255
      add :fee, :string, size: 10
      add :description, :text
      add :notes, :string, size: 1000
      add :status, :string, size: 20
      add :start_at, :datetime
      add :finish_at, :datetime
      add :setup_time, :integer
      add :teardown_time, :integer
      
      timestamps
    end
  end

  def down do
    drop table(:events)
  end
end
