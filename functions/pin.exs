defmodule Greeter do
  def for(name, greeting) do
    fn
      (^name) -> "#{greeting} #{name}"
      (_) -> "I don't know you"
    end
  end
end


mr_valim = Greeter.for("Jose", "Oi!")

IO.inspect(mr_valim.("Jose"))

IO.inspect(mr_valim.("dave"))
