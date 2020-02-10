defmodule MyList do
  def sum([], total), do: total
  def sum([head | tail], total), do: sum(tail, total + head) 
end

IO.inspect MyList.sum([1,2,3,4,5], 0)
