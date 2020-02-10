defmodule MyList do
  def square([]), do: []
  def square([head | tail]), do: [head * head | square(tail)]
  def add1([]), do: []
  def add1([head | tail]), do: [head + 1 | add1(tail)]
  def map([], _func), do: []
  def map([head | tail], func), do: [ func.(head) | map(tail, func) ]
end

IO.inspect MyList.square([])
IO.inspect MyList.square([11,12,13,14,15])

IO.inspect MyList.add1([])
IO.inspect MyList.add1([11,12,13,14,15])

IO.inspect MyList.map [1,2,3,4], fn (n) -> n + 1 end
IO.inspect MyList.map [1,2,3,4], &(&1 + 1)

IO.inspect MyList.map [1,2,3,4], fn (n) -> n > 2 end