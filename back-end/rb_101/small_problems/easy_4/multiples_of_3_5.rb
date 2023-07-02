def multisum(num)
  sum = 0

  (1..num).to_a.each do |number|
    if number % 3 == 0 || number % 5 == 0
      sum += number
    end
  end

  sum
end

def multisum(num)
  (1..num).to_a.select do |int|
    int % 3 == 0 || int % 5 == 0
  end.sum
end


p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168