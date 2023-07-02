puts "Please write in some undercase text to capitalize. I will only capitalize if it is more than 10 letters."
answer = gets.chomp

def all_caps(string)
  if string.length > 10
     puts string.upcase
  else
    puts "Not enough letters to capitalize."
   end 
end

print all_caps(answer)
