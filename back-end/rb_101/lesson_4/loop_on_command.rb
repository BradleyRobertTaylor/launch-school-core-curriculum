loop do
  puts 'Should I stop laughing?'
  answer = gets.chomp
  break if answer.downcase == 'yes'
  puts 'Try again...'
end