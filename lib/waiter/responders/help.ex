defmodule Waiter.Responders.Help do
  @moduledoc """
  Responds to 'help' with help info
  """

  use Hedwig.Responder

  @usage """
  waiter: hello - Responds with 'hey!'
  """
  respond ~r/help$/i, msg do
    reply msg, "You can ask me where to get lunch by saying `waiter find me lunch`"
  end
end
