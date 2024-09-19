defmodule RandixirTest do
  use ExUnit.Case
  doctest Randixir

  test "greets the world" do
    assert Randixir.hello() == :world
  end
end
