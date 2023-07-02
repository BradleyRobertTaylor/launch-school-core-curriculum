print 'What is your name? '
name = gets.chomp

if name.include?('!')
  name = name[-1] == '!'
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name.capitalize}."
end

# print 'What is your name? '
# name = gets.chomp

# if name[-1] == '!'
#   name = name.chop
#   puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
# else
#   puts "Hello #{name}."
# end