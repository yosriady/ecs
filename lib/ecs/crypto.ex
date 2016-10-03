defmodule ECS.Crypto do
  @moduledoc """
    Utility function(s) for entity ID generation
  """

  @doc "Generates a random base64 string of specified length"
  def random_string(length) do
    :crypto.strong_rand_bytes(length)
      |> Base.url_encode64
      |> binary_part(0, length)
  end
end
