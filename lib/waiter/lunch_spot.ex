defmodule Waiter.LunchSpot do
  use Ecto.Schema

  schema "lunch_spots" do
    field :name     # Defaults to type :string
  end
end
