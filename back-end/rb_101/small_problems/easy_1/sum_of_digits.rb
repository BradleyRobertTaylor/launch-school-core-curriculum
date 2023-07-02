# def sum(num)
#   sum = 0

#   num.to_s.split('').each do |num|
#     sum += num.to_i
#   end
  
#   sum
# end

# def sum(num)
#   numbers = num.to_s.split('')
#   sum = 0

#   for i in numbers
#     sum += i.to_i
#   end

#   sum
# end

def sum(number)
  sum = 0
  str_digits = number.to_s.chars

  str_digits.each do |str_digit|
    sum += str_digit.to_i
  end

  sum
end

# def sum(number)
#   number.to_s.chars.map(&:to_i).reduce(:+)
# end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45