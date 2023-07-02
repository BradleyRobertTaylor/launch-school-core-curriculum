def character_count(string)
  string.delete(' ').size
end

print "Please write word or multiple words: "
input = gets.chomp
print "There are #{character_count(input)} characters in \"#{input}\"."