vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

# Write a method that, given an array, counts the number of 
# occurences of each element in a given array.
# input: array
# output: hash with key representing the element and values
# representing the number of occurences
# words in the array are case-sensitive, ie. 'suv' != 'SUV'

def count_occurrences(array)
  occurences = {}
  array.uniq.each do |element|
    occurences[element] = array.count(element)
  end

  occurences.each do |element, count|
    puts "#{element} => #{count}"
  end
end





# def count_occurrences(array)
#   car_counter = 0
#   suv_counter = 0
#   truck_counter = 0
#   motorcycle_counter = 0
  
#   array.each do |vehicle|
#     if vehicle == 'car'
#       car_counter += 1
#     elsif vehicle == 'truck'
#       truck_counter += 1
#     elsif vehicle == 'motorcycle'
#       motorcycle_counter += 1
#     else
#       suv_counter += 1
#     end
#   end

#   puts "car => #{car_counter}"
#   puts "truck => #{truck_counter}"
#   puts "SUV => #{suv_counter}"
#   puts "motorcycle => #{suv_counter}"
# end






count_occurrences(vehicles)

# Expected output:
# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2