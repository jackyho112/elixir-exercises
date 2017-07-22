defmodule Flatten do
  def of(collection, result \\ [], remains \\ [])

  def of([head | tail], result, remains) do
    of(head, result, [tail | remains])
  end

  def of([], result, [head | tail]) do
    of(head, result, tail)
  end

  def of(value, result, [head | tail]) do
    of(head, [value | result], tail)
  end

  def of(_value, result, []) do
    Enum.reverse(result)
  end
end
