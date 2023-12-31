def select(array)
  new_arr = []
  counter = 0

  while counter < array.size
    selected = yield(array[counter]) 
    new_arr << array[counter] if selected
    counter += 1
  end

  new_arr
end

# def select(array)
#   counter = 0
#   result = []

#   while counter < array.size
#     current_element = array[counter]
#     result << current_element if yield(current_element)
#     counter += 1
#   end

#   result
# end

array = [1, 2, 3, 4, 5]

p select(array) { |num| num.odd? }      # => [1, 3, 5]
p select(array) { |num| puts num }      # => [], because "puts num" returns nil and evaluates to false
p select(array) { |num| num + 1 }       # => [1, 2, 3, 4, 5], because "num + 1" evaluates to true