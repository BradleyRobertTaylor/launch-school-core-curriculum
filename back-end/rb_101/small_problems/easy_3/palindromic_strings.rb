ALPHABET = ('a'..'z').to_a

def palindrome?(string)
  string.reverse == string
end

def real_palindrome?(string)
  string.downcase!
  new_string = ""

  string.chars.each do |char|
    new_string << char if ALPHABET.include?(char)
  end
  
  palindrome?(new_string)
end

p real_palindrome?('madam') #== true
p real_palindrome?('Madam') #== true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") #== true # (only alphanumerics matter)
p real_palindrome?('356653') #== true
p real_palindrome?('356a653') #== true
p real_palindrome?('123ab321') #== false