defmodule MaxList do
  def of(arr, max \\ 0)

  def of([], max), do: max

  def of([head | tail], max) when head > max do
    of(tail, head)
  end

  def of([head | tail], max) when head < max do
    of(tail, max)
  end
end
