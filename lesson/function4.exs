prefix = fn a -> (fn b -> a <> " " <> b end) end

mrs = prefix.("Mrs")

IO.inspect(mrs.("Smith"))
IO.inspect(prefix.("Elixir").("Rocks"))