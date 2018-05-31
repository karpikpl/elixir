defmodule Worker do
  def process_result({:error, message}) do
    IO.puts "error! #{message}"
  end

  def process_result({status, content}) do
    IO.puts "status is #{status} and with returned content #{content}"
  end
end

Worker.process_result {:ok, "some content"}
Worker.process_result{:error, "some error occured"}
