map_func = Enum.map [1, 2, 3, 4], &(&1 + 2)
IO.inspect(map_func)

Enum.each [1, 2, 3, 4], &(IO.inspect(&1))