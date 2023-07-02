def stringy(int)
  int_arr = []
  counter = 0
  
  until int_arr.length == int
    int_arr << 0 if counter % 2 != 0
    int_arr << 1 if counter % 2 == 0
    counter += 1
  end
  
  int_arr.join
end

# def stringy(size)
#   numbers = []

#   size.times do |index|
#     number = index.even? ? 1 : 0
#     numbers << number
#   end

#   numbers.join
# end



puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'