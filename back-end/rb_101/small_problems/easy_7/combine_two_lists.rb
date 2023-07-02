def interleave(arr1, arr2)
  result = []
  index = 0

  loop do
    result << arr1[index] << arr2[index]
    index += 1
    break if result.size == (arr1.size * 2)
  end

  result
end

# def interleave(arr1, arr2)
#   arr1.zip(arr2).flatten
# end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

# def interleave(array1, array2)
#   result = []
#   array1.each_with_index do |element, index|
#     result << element << array2[index]
#   end
#   result
# end
