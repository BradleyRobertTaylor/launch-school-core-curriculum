arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

new_arr = arr.select { |num| num % 2 != 0 }

puts new_arr

arr.push(11)
arr.unshift(0)
