defmodule RandixirTest do
  use ExUnit.Case
  doctest Randixir

  test "generate int is in correct range" do
    assert Randixir.int(5) |> then(fn x -> 0 <= x && x <= 5 && is_integer(x) end) == true
    assert Randixir.int(2, 7) |> then(fn x -> 2 <= x && x <= 7 && is_integer(x) end) == true
  end

  test "generate float is in correct range" do
    assert Randixir.float(1.0) |> then(fn x -> 0.0 <= x && x <= 1.0 && is_float(x) end) == true

    assert Randixir.float(7.5, 8.5) |> then(fn x -> 7.5 <= x && x <= 8.5 && is_float(x) end) ==
             true

    assert Randixir.float(7, 7) == 7.0
  end
end
