def sequence(num)
  # if number is less than 0 this returns a count up to the negative number from -1
  num > 0 ? (1..num).to_a : (num..-1).to_a.reverse
end

p sequence(5) #== [1, 2, 3, 4, 5]
p sequence(3) #== [1, 2, 3]
p sequence(1) #== [1]
p sequence(-4)