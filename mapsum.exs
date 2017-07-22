defmodule MapSum do
  def of(arr, func, value \\ 0)

  def of([], _func, value) do
    value
  end

  def of([head | tail], func, value) do
    of(tail, func, value + func.(head))
  end
end
