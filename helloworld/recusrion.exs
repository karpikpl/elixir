# the cons operator - split list int head (first element) and tail (remaining elements)
#[head | tail] = ["a", "b", "c"]
#IO.puts("head: #{head}, tail #{tail}")
## outputs: head: a, tail bc

defmodule Language do
  def print_list([head | tail]) do
    IO.puts head
    print_list(tail)
  end

  def print_list([]) do
  end
end

Language.print_list(["Elixir", "JavaScript", "Ruby"])
