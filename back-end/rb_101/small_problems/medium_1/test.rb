# Given an integer n, find the maximal number you can obtain by deleting exactly one digit of the given number.

# Example
# For n = 152, the output should be 52;

# For n = 1001, the output should be 101.

# Input/Output
# [input] integer n

# Constraints: 10 ≤ n ≤ 1000000.

# [output] an integer

def delete_digit(n)
  num_string_arr = n.to_s.chars
  result = []
  
  0.upto(num_string_arr.size).each do |num|
    num_string_arr.delete_at(num)
    result << num_string_arr
    num_string_arr = n.to_s.chars
  end

  result = result.select do |sub_arr|
    sub_arr.size != num_string_arr.size
  end

  result.map do |sub_arr|
    sub_arr.join.to_i
  end.max
end


p delete_digit(152)
p delete_digit(1001)
p delete_digit(10)
