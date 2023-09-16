defmodule PotionsTest do
  use ExUnit.Case
  doctest Potions
  import Potions

  test "greets the world" do
    assert ~LLM"model:gpt-3.5-turbo user:how do I build an igloo in 10 words?" ==
             [
               model: "gpt-3.5-turbo",
               messages: [%{role: "user", content: "how do I build an igloo in 10 words?"}]
             ]
  end
end
