defmodule Reduce do
  def go(list, y) do
    reduce(list, y, 0)  
  end
  defp reduce([], y, acc), do: acc
  defp reduce([head|tail] = list, y, acc) do
    IO.puts "LIST: #{inspect list}\nHEAD: #{inspect head}\nTAIL: #{inspect tail}"
    tail
    |> reduce(y, y.(head, acc))
  end
end
