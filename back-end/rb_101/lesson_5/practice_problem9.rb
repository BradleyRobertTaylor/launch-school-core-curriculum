arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

# new_arr = []

# arr.each do |arr|
#   new_arr << arr.sort
# end

arr.map do |sub_arr|
  sub_arr.sort do |a, b|
    b <=> a
  end
end
# => [["c", "b", "a"], [3, 2, 1], ["green", "blue", "black"]]