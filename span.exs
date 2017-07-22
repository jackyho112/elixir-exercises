defmodule MyList do
  def span(from, to, result \\ [])

  def span(from, to, result) when from === to do
    Enum.reverse([to | result])
  end

  def span(from, to, result) do
    span(from + 1, to, [from | result])
  end
end
