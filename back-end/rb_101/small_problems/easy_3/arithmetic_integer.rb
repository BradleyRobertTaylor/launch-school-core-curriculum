def prompt(string)
  puts '==> ' + string
end

def add(first, second)
  sum = first + second
  prompt("#{first} + #{second} = #{sum}")
end

def subtract(first, second)
  difference = first - second
  prompt("#{first} - #{second} = #{difference}")
end

def multiply(first, second)
  product = first * second
  prompt("#{first} * #{second} = #{product}")
end

def divide(first, second)
  quotient = first / second
  prompt("#{first} / #{second} = #{quotient}")
end

def remainder(first, second)
  remainder = first % second
  prompt("#{first} % #{second} = #{remainder}")
end

def power(first, second)
  power = first ** second
  prompt("#{first} ** #{second} = #{power}")
end

prompt('Enter the first number:')
num_1 = gets.chomp.to_i

num_2 = nil

loop do
  prompt('Enter the second number:')
  num_2 = gets.chomp.to_i
  if num_2 != 0
    break
  else
    prompt("Second number can't be 0.")
  end
end

add(num_1, num_2)
subtract(num_1, num_2)
multiply(num_1, num_2)
divide(num_1, num_2)
remainder(num_1, num_2)
power(num_1, num_2)
