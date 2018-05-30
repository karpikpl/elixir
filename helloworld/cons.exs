languages = ["Elixir", "JavaScript", "Ruby"]

# pattern matching to get elements
[first, second, third] = languages

IO.puts("first: #{first}, second: #{second}, third: #{third}")

# the cons operator - split list int head (first element) and tail (remaining elements)
[head | tail] = languages

IO.puts("head: #{head}, tail: #{tail}")
## outputs: head: Elixir, tail: JavaScriptRuby

# pick first
[_ | first] = languages
IO.puts("first: #{first}")
## outputs: first: JavaScriptRuby
