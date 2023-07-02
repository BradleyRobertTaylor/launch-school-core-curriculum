# def multiply_list(arr1, arr2)
#   result = []
#   index = 0

#   while result.size < arr1.size
#     result << arr1[index] * arr2[index]
#     index += 1
#   end
#   result
# end

def multiply_list(arr1, arr2)
  arr1.zip(arr2).map { |arr| arr[0] * arr[1] }
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]