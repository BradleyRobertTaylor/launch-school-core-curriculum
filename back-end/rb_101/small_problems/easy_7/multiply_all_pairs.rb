# def multiply_all_pairs(list_1, list_2)
#   products = []
#   index = 0
#   loop do
#     list_2.each do |num|
#       products << num * list_1[index]
#     end
#     index += 1
#     break if products.size == list_1.size * list_2.size
#   end
#   products.sort
# end

# def multiply_all_pairs(array_1, array_2)
#   products = []
#   array_1.each do |item_1|
#     array_2.each do |item_2|
#       products << item_1 * item_2
#     end
#   end
#   products.sort
# end

def multiply_all_pairs(arr1, arr2)
  arr1.product(arr2).map { |arr| arr[0] * arr[1] }.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]