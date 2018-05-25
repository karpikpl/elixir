defmodule Hello do
  def say_hello do
    IO.puts("Hello world!")
  end

  def say_hello(name) do
    IO.puts("Hello #{name}!")
  end

  def hello_pipped(name) do
    "Hello #{name}! I'm piping!"
    |> IO.puts
  end
end


Hello.say_hello()
Hello.say_hello("Peter")
Hello.hello_pipped("Peter2")
