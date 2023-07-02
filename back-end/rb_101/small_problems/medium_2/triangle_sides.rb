def triangle(side_1, side_2, side_3)
  sides = [side_1, side_2, side_3]
  longest_side = sides.max

  case
  when longest_side * 2 > sides.inject(:+) || sides.include?(0)
    :invalid
  when side_1 == side_2 && side_2 == side_3
    :equilateral
  when side_1 == side_2 || side_2 == side_3 || side_1 == side_3
    :isosceles
  else
    :scalene
  end
end




p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
p triangle(8, 4, 7)

# def triangle(side1, side2, side3)
#   sides = [side1, side2, side3]
#   largest_side = sides.max

#   case
#   when 2 * largest_side > sides.reduce(:+), sides.include?(0)
#     :invalid
#   when side1 == side2 && side2 == side3
#     :equilateral
#   when side1 == side2 || side1 == side3 || side2 == side3
#     :isosceles
#   else
#     :scalene
#   end
# end