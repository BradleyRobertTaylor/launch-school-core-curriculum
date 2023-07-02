# Re-order the characters of a string, so that they are concatenated 
# into a new string in "case-insensitively-alphabetical-order-of-appearance" order. 
# Whitespace and punctuation shall simply be removed!

# The input is restricted to contain no numerals and only words containing 
# the english alphabet letters.

ALPHABET = ('a'..'z').to_a + ('A'..'Z').to_a

def alphabetized(string)
  string.delete!(' ')
  clean_string = ""

  string.chars.each do |char|
    clean_string << char if ALPHABET.include?(char)
  end

  clean_string.chars.sort_by { |char| char.downcase }.join
end

p alphabetized("")
p alphabetized(" ")
p alphabetized(" a")
p alphabetized("!@$%^&*()_+=-`,")
p alphabetized("The Holy Bible")