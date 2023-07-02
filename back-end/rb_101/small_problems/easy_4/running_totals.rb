# def running_total(arr)
#   total_arr = []
#   total = 0

#   arr.each do |num|
#     total_arr << (total += num) 
#   end

#   total_arr
# end

# def running_total(array)
#   sum = 0
#   array.map { |value| sum += value }
# end

def running_total(arr)
  total = 0
  arr.each_with_object([]) do |num, array|
    array << total += num
  end
end


p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []