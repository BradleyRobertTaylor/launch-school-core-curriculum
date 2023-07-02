def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(num, n)
  last_digits = num.to_s.chars[-n..-1].map { |num| num.to_i }
  last_digits = rotate_array(last_digits).map { |num| num.to_s }.join
  first_digits = num.to_s.chars[0...(num.to_s.size - n)].join
  (first_digits + last_digits).to_i
end

# p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
# p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
# p rotate_array(['a']) == ['a']

# x = [1, 2, 3, 4]
# p rotate_array(x) == [2, 3, 4, 1]   # => true
# x == [1, 2, 3, 4]                 # => true

# p rotate_rightmost_digits(735291, 1) == 735291
# p rotate_rightmost_digits(735291, 2) == 735219
# p rotate_rightmost_digits(735291, 3) == 735912
# p rotate_rightmost_digits(735291, 4) == 732915
# p rotate_rightmost_digits(735291, 5) == 752913
# p rotate_rightmost_digits(735291, 6) == 352917

# def rotate_rightmost_digits(number, n)
#   all_digits = number.to_s.chars
#   all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
#   all_digits.join.to_i
# end

def max_rotation(num)
  number_digits = num.to_s.size
  number_digits.downto(2) do |n|
    num = rotate_rightmost_digits(num, n)
  end
  num
end

p max_rotation(735291) #== 321579
p max_rotation(3) #== 3
p max_rotation(35) #== 53
p max_rotation(105) #== 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) #== 7_321_609_845