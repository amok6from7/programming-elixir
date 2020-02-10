defmodule Chop do

  def guess(actual, min..max) when (actual < min) or (actual > max),
    do: 'Impossible guess!'

  def guess(actual, min..max) do
    guess_value = div(min + max, 2)
    IO.puts ("Is it #{guess_value}")
    _guess(actual, min..max, guess_value)
  end

  defp _guess(actual, _, guess_value) when actual == guess_value,
    do: guess_value

  defp _guess(actual, min.._, guess_value) when actual < guess_value,
    do: guess(actual, min..(guess_value - 1))

  defp _guess(actual, _..max, guess_value) when actual > guess_value,
    do: guess(actual, (guess_value + 1)..max)

end

IO.puts (Chop.guess(273, 1..1000))