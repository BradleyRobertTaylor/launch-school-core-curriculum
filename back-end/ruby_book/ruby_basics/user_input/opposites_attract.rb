# opposites_attract.rb

def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end


def integers
    loop do
    puts "Please enter a positive or negative integer:"
    ans = gets.chomp
    if valid_number?(ans)
      return ans.to_i
    else
      puts "Invalid input. Only non-zero integers allowed."
    end
  end
end

num1 = nil
num2 = nil

loop do
  num1 = integers
  num2 = integers
  break if num1 > 0 && num2 < 0 || num1 < 0 && num2 > 0
    puts "Sorry. One integer must be positive, one must be negative."
    puts "Please start over."
end

result = num1 + num2

puts "#{num1} + #{num2} = #{result}"




    
