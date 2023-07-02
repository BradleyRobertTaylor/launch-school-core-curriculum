# def triangle(n)
#   array = []
#   (1..n).to_a.reverse.each do |num|
#     array << num
#   end

#   counter = 0
#   star_num = 1
#   loop do
#     puts ' ' * (array[counter] - 1) + ('*' * star_num)

#     counter += 1
#     star_num += 1
    
#     break if counter == array.length
#   end
# end

# triangle(9)

# Input: integer n for number of * on each side of a triangle
# Output: right triangle made up of stars (*) with hypotenuse that ends at the upper right
# ex. 

# triangle(1)
# *
# triangle(2)
#  *
# **
# triangle(3)
#   *
#  **
# ***

# Implicit requirements
#   - Each line is made up of spaces " " and stars *
#   - Each line has one less space than the last beginning (input - 1)
#   - Triangle is done being created when the spaces are 0

# triangle(5)

#     *
#    **
#   ***
#  ****
# *****


def triangle(side_length)
  spaces = side_length - 1
  stars = 1

  while stars <= side_length
    puts (' ' * spaces) + ('*' * stars)
    stars += 1
    spaces -= 1
  end
end

triangle(1)
 
triangle(2)

triangle(9)
