defmodule Waiter.Responders.Lunch do
  @moduledoc """
  Responds to 'find.*lunch' with a randomly selected lunch spot
  """

  use Hedwig.Responder

  @usage """
  waiter: find.*lunch - Responds with a randomly selected lunch spot
  """
  respond ~r/find.*lunch$/i, msg do
    spot_name = Waiter.LunchSpots.get_random_spot_name
    reply msg, "I command you to get lunch at #{spot_name}"
  end

  @usage """
  waiter: remember(\w+) - Responds with a randomly selected lunch spot
  """
  respond ~r/remember (?<lunch_spot>\w+)$/i, msg do
    name_of_lunch_spot = msg.matches["lunch_spot"]

    reply msg, "No problem! I'll remmeber #{name_of_lunch_spot}"
    :ok = Waiter.LunchSpots.add_lunch_spot(name_of_lunch_spot)
  end
end

