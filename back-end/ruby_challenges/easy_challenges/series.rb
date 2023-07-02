# 

# class Series
#   attr_reader :numbers

#   def initialize(numbers)
#     @numbers = numbers.split('').map(&:to_i)
#   end

#   def slices(size)
#     raise ArgumentError.new("Value too large.") if size > numbers.length
#     result = []
#     last_index = numbers.length - size
    
#     0.upto(numbers.length - 1).each do |index1|
#       array = []

#       index1.upto(index1 + (size - 1)).each do |index2|
#         array << numbers[index2]
#       end

#       result << array
#     end

#     result.select { |sub_arr| !sub_arr.include?(nil) }
#   end
# end

class Series
  attr_reader :numbers

  def initialize(numbers)
    @numbers = numbers.chars.map(&:to_i)
  end

  def slices(size)
    raise ArgumentError.new("Slice too large.") if size > numbers.length
    numbers.each_cons(size).to_a
  end
end

p Series.new('01234').slices(1)

