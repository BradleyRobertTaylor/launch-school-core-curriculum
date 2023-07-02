# Write a method that takes one argument: an array of integers.
# The method should return the minimum sum of 5 consecutive
# numbers in the array. If the array contains fewer than 5
# elements, the method should return nil.

# Examples:

# p minimum_sum([1, 2, 3, 4]) == nil
# p minimum_sum([1, 2, 3, 4, 5, 6]) == 15
# p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
# p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10

# The tests above should print "true".

=begin

Problem
  - input: array of integers
  - output: integer (minimum sum of 5 integers)

Rules/Requirements:
  - given an array of numbers
  - return the mimimum sum of 5 consecutive numbers
  - if array is less than 5 elements, the method should return nil

Questions:
  - 

Examples:
p minimum_sum([1, 2, 3, 4]) == nil
p minimum_sum([1, 2, 3, 4, 5, 6]) == 15
p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10

Data Structures:
input: array of numbers
intermed: use arrays to collect subarrays up to length of 5
output: sum of minimum subarray

Algorithm:
Example: ([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
  - accept num_arr as argument
  - return nil if num_arr.size < 5
  - create min_sum = []
  - iterate from 0 to the (last index of num_arr) - 4 |index|
  - on each iteration collect 5 elements starting at the index and add these subarrays to min_sum
  - sum subarrays and return the smallest value
  
=end


def minimum_sum(num_arr)
  return nil if num_arr.size < 5
  min_sum = []
  last_index = num_arr.find_index(num_arr.last) - 4
  (0..last_index).each do |index|
    min_sum << num_arr[index, 5]
  end
  min_sum.map(&:sum).min
end

p minimum_sum([1, 2, 3, 4]) == nil
p minimum_sum([1, 2, 3, 4, 5, 6]) == 15
p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10