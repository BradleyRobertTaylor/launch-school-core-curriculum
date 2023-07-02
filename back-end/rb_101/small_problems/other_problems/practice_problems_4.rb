# Write a method that takes an array of integers and returns the
# two numbers that are closest together in value.

# Examples:

# p closest_numbers([5, 25, 15, 11, 20]) == [15, 11]
# p closest_numbers([19, 25, 32, 4, 27, 16]) == [25, 27]
# p closest_numbers([12, 7, 17]) == [12, 7]

# The tests above should print "true".

# Input: array of integers
# Output: array with two integers from input array that are the closest together in value

# Approach: 
#   - Start by iterating through the input array and return all of the pairs of integers in the array
#   - Write a method that finds the distance between two values
#   - Whichever pair has the smallest distance gets returned

def num_pairs(num_arr)
  counter = 0
  pairs = []
  loop do
    num_arr.each_with_index do |num, index|
      pairs << [num_arr[counter], num_arr[index]] unless index <= counter
    end
    counter += 1
    break if counter == num_arr.size
  end
  pairs
end

def closest_numbers(num_arr)
  pairs = num_pairs(num_arr)

  result = {}
  pairs.each do |pair|
    result[pair] = distance_between(pair)
  end
  result.sort_by do |key, value|
    value
  end.to_h.first[0]
end

def distance_between(pair_nums)
  pair_nums = pair_nums.sort { |num1, num2| num2 <=> num1}
  pair_nums[0] - pair_nums[1]
end

p closest_numbers([5, 25, 15, 11, 20]) == [15, 11]
p closest_numbers([19, 25, 32, 4, 27, 16]) == [25, 27]
p closest_numbers([12, 7, 17]) == [12, 7]




