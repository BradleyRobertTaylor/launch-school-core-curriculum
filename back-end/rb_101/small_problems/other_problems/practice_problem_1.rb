# Given an array of numbers, for each number find out how many numbers
# in the array are smaller than it. When counting numbers, only count
# unique values. That is, if a given number occurs multiple times in
# the array, it should only be counted once.

# Examples:

# p smaller_numbers_than_current([8,1,2,2,3]) == [3, 0, 1, 1, 2]
# p smaller_numbers_than_current([1,4,6,8,13,2,4,5,4])
#                             == [0, 2, 4, 5, 6, 1, 2, 3, 2]
# p smaller_numbers_than_current([7,7,7,7]) == [0,0,0,0]
# p smaller_numbers_than_current([6,5,4,8]) == [2, 1, 0, 3]
# p smaller_numbers_than_current([1]) == [0]

# The tests above should print "true".

# input: array of numbers
# output: array of numbers (each number changed to be a count of numbers 
#         in the array smaller than it)

# Rules/Requirements:
# - find out how many numbers in the array are smaller than it
# - when counting nubers only count unique values
# - count should be 0 if there are no elements smaller than it

# Data Structures:
# - input: array
# - intermed: transform array elements into their counts
# - output: array

# Algorithm:
# Example: [8,1,2,2,3] == [3, 0, 1, 1, 2]
# - accept array as an argument
# - create compare_arr and assign it to input array.uniq
# - iterate over input num_array using map |num|
#   - initialize count to 0
#   - iterate over compare_arr |compare_num|
#     - if num > compare_num add to the count
#   - return count

def smaller_numbers_than_current(num_arr)
  compare_arr = num_arr.uniq
  num_arr.map do |num|
    count = 0
    compare_arr.each do |compare_num|
      count += 1 if num > compare_num
    end
    count
  end
end


p smaller_numbers_than_current([8,1,2,2,3]) == [3, 0, 1, 1, 2]
p smaller_numbers_than_current([1,4,6,8,13,2,4,5,4]) == [0, 2, 4, 5, 6, 1, 2, 3, 2]
p smaller_numbers_than_current([7,7,7,7]) == [0,0,0,0]
p smaller_numbers_than_current([6,5,4,8]) == [2, 1, 0, 3]
p smaller_numbers_than_current([1]) == [0]
