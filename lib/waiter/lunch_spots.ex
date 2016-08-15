defmodule Waiter.LunchSpots do
  alias Waiter.LunchSpot
  alias Waiter.Repo

  import Ecto.Query

  def add_lunch_spot(name_of_lunch_spot) do
    lunch_spot = %LunchSpot{name: name_of_lunch_spot}

    {:ok, _} = Repo.insert(lunch_spot)
    :ok
  end

  def get_random_spot_name do
    query = from spots in "lunch_spots", select: spots.name 

    Repo.all(query)
    |> Enum.random
  end
end
