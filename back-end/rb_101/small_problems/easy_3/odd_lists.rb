def oddities(arr)
  result = []

  arr.each_with_index do |element, index|
    result << element if index.even? 
  end

  result
end

# def oddities(arr)
#   new_array = []
#   idx = 0

#   loop do
#     new_array << arr[idx] if idx % 2 == 0
#     idx += 1
#     break if idx >= arr.size
#   end

#   new_array == [nil] ? new_array = [] : new_array
# end

def even_indices(arr)
  result = []

  arr.each_with_index do |element, index|
    result << element if index.odd? 
  end

  result
end



p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []