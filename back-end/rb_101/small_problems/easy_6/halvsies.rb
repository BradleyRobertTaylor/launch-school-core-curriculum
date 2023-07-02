def halvsies(arr)
  first_half = []
  second_half = []
  middle = arr.size / 2.0

  arr.each do |num|
    first_half.size < middle ? first_half << num : second_half << num
  end

  [first_half, second_half]
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]