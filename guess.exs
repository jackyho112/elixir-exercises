defmodule Chop do
  def guess(num, a..b) when num > b or num < a do
    "Not found"
  end

  def guess(num, a..b) do
    compare(num, a..b, pick(a..b))
  end

  defp pick(a..b) do
    guessedNum = round((a + b)/2)
    IO.puts "Gussed #{guessedNum}"
    guessedNum
  end

  defp compare(num, _.._, currentGuess) when currentGuess === num do
    currentGuess
  end

  defp compare(num, _..b, currentGuess) when num > currentGuess do
    guess(num, (currentGuess + 1)..b)
  end

  defp compare(num, a.._, currentGuess) when num < currentGuess do
    guess(num, a..(currentGuess - 1))
  end
end
