defmodule Fib do
  def fib(index, seq \\ [0, 1])
  def fib(1, seq) do
    Enum.at(seq, -1)
  end
  def fib(index, seq) do
    tail = Enum.at(seq, -1) + Enum.at(seq, -2)
    fib(index - 1, seq ++ [tail])
  end
end

IO.inspect Fib.fib(7)
