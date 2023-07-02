def multiply(number_array, multiplier)
  new_number_array = []
  counter = 0

  loop do
    break if counter == number_array.size

    answer = number_array[counter] * multiplier
    new_number_array << answer
    counter += 1
  end

  new_number_array
end  


my_numbers = [1, 4, 3, 7, 2, 6]
p multiply(my_numbers, 3) # => [3, 12, 9, 21, 6, 18]