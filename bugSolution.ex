```elixir
list = [1, 2, 3, 4, 5]

# Correct approach: Create a new list
list = Enum.filter(list, fn x -> x != 3 end)

IO.inspect(list)

#Alternative using Enum.reduce
list2 = [1,2,3,4,5]
new_list = Enum.reduce(list2, [], fn x, acc -> 
  if x != 3 do
    [x | acc]
  else
    acc
  end
end)
IO.inspect(new_list)
```