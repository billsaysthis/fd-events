defmodule User do
  use Ecto.Model

  schema "users" do
    field :first_name, :string
    field :last_name, :string
    field :email, :string
    field :joined_at, :datetime
    field :active, :boolean
      
    timestamps
    
    has_many :events, Event
  end
end