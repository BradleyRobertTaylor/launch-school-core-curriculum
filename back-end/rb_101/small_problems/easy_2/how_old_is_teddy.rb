teddy_age = rand(20..200)

puts 'What is your name?'
name = gets.chomp.capitalize

if name == ''
  puts "Teddy is #{teddy_age} years old!"
else
  puts "#{name} is #{teddy_age} years old!"
end