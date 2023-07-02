puts "Please give me a number between 0 to 100."
response = gets.chomp.to_i

if response < 0
    puts "No negative numbers!"
  elsif response <= 50
    puts "#{response} is between 0 and 50."
  elsif response <= 100
    puts "#{response} is between 51 and 100."
  else
    puts "#{response} is greater than 100."
end
