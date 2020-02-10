defmodule MyList do
  def sum(list), do: _sum(list, 0)
  defp _sum([], total), do: total
  defp _sum([head | tail], total), do: _sum(tail, total + head)
end

IO.inspect MyList.sum([6,7,8,9,10])