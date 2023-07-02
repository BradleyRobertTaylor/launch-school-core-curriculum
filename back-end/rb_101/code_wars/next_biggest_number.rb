# 12 #==> 21
# 513 #==> 531
# 2017 #==> 2071
# If no bigger number can be composed using those digits, return -1:
# 9 #==> -1
# 111 #==> -1
# 531 #==> -1
# =end

def next_bigger_num(num)
  permutations_arr = []
  arr_size = num.to_s.length

  num.to_s.chars.permutation(arr_size) { |permutation| permutations_arr << permutation }
  
  permutations_arr.map! do |string_num|
    string_num.join('').to_i
  end

  next_biggest = permutations_arr.select do |number|
    number != num && number > num 
  end.min

  next_biggest == nil ? -1 : next_biggest
end

p next_bigger_num(9) == -1
p next_bigger_num(12) == 21
p next_bigger_num(513) == 531
p next_bigger_num(2017) == 2071
p next_bigger_num(111) == -1
p next_bigger_num(531) == -1
p next_bigger_num(123456789) == 123456798
