# def times(num)
#   0.upto(num -1).each do |int|
#     yield(int)
#   end

#   num
# end

# times(5) do |num|
#   puts num
# end

# method implementation
def times(number)
  counter = 0
  while counter < number do
    yield(counter)
    counter += 1
  end

  number                      # return the original method argument to match behavior of `Integer#times`
end

# method invocation
times(5) do |num|
  puts num
end

# Output:
# 0
# 1
# 2
# 3
# 4
# => 5