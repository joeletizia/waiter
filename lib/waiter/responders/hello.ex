defmodule Waiter.Responders.Hello do
  @moduledoc """
  Responds to 'hello' with 'hey!'
  """

  use Hedwig.Responder

  @usage """
  waiter: hello - Responds with 'hey!'
  """
  respond ~r/hello$/i, msg do
    reply msg, "hey!"
  end
end
