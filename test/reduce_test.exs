defmodule ReduceTest do
  use ExUnit.Case
  doctest Reduce

  test "reduce" do
    assert Reduce.go([1], fn x, acc -> x end) == 1
    assert Reduce.go([1,2], fn x, acc -> acc + x end) == 3 
    assert Reduce.go([1,2,3,4,5,6], fn x, acc -> acc + x end) == 3 
  end
end
