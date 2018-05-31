defmodule Account do
  def parse_file({:ok, content}) do
    IO.puts "Trasactions: #{content}"
  end

  def parse_file({:error, error}) do
    IO.puts "Error parsing file: #{error}"
  end
end

File.read("does-not-exist") |> Account.parse_file
File.read("data/sample.txt") |> Account.parse_file
