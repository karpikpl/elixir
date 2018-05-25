# annonymous function
max_balance = fn(amount) -> "Max #{amount}" end

max_balance.(500)
|> IO.puts

defmodule Account do
  def run_transaction(balance, amount, transaction) do
    if balance <= 0 do
      "Cannot perform any transaction"
    else
      # calling annonymous function
      transaction.(balance, amount)
    end
  end
end

deposit = fn(balance, amount) -> balance + amount end
withdrawal = fn(balance, amount) -> balance - amount end

Account.run_transaction(1000, 20, withdrawal)
|> IO.puts
Account.run_transaction(1000, 20, deposit)
|> IO.puts

# patern matching in annonymous functions
account_transaction = fn
  (balance, amount, :deposit) -> balance + amount
  (balance, amount, :withdrawal) -> balance - amount
 end

account_transaction.(100, 40, :deposit)
|> IO.puts

# annonymous function shorthand syntax
Account.run_transaction(1000, 657, &(&1 - &2))
|> IO.puts

# map operation
Enum.map([1,2,3,4,5], &(&1 *2))
|> IO.inspect 
