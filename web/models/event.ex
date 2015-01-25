defmodule Event do
  use Ecto.Model

  schema "events" do
    field :name, :string
    field :event_type, :string
    field :attendance, :integer
    field :public_url, :string
    field :fee, :string
    field :description, :string
    field :notes, :string
    field :status, :string
    field :start_at, :datetime
    field :finish_at, :datetime
    field :setup_time, :integer
    field :teardown_time, :integer

    timestamps
    
    belongs_to :user, User
    has_many :events_rooms, EventsRoom
    has_many :rooms, through: [:events_rooms, :rooms]
  end
end