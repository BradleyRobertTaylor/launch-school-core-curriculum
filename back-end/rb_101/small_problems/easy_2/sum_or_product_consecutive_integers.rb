def prompt(string)
  puts ">> " + string
end

num_choice = nil

loop do
  prompt("Please enter an integer greater than 0:")
  num_choice = gets.chomp.to_i
  break if num_choice > 0
  prompt("Invalid entery.")
end

loop do
  prompt("Enter 's' to compute the sum, 'p' to compute the product:")
  operation = gets.chomp

  sum = 0
  product = 1


  if operation == 's'
    sum = (1..num_choice).inject(:+)
    puts "The sum of the integers between 1 and #{num_choice} is #{sum}."
    break
  elsif operation == 'p'
    product = (1..num_choice).inject(:*)
    puts "The product of the integers between 1 and #{num_choice} is #{product}."
    break
  else
    prompt("Uknown operation entered.")
  end
end






# >> Please enter an integer greater than 0:
# 5
# >> Enter 's' to compute the sum, 'p' to compute the product.
# s
# The sum of the integers between 1 and 5 is 15.


# >> Please enter an integer greater than 0:
# 6
# >> Enter 's' to compute the sum, 'p' to compute the product.
# p
# The product of the integers between 1 and 6 is 720.