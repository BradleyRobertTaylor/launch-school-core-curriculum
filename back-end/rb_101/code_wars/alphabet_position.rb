# In this kata you are required to, given a string, replace every letter 
# with its position in the alphabet.

# If anything in the text isn't a letter, ignore it and don't return it.

def initialize_alphabet_hash
  alphabet_hash = {}
  ('a'..'z').to_a.each_with_index do |letter, index|
    alphabet_hash[letter] = (index + 1).to_s
  end
  alphabet_hash
end

def alphabet_position(string)
  alphabet_hash = initialize_alphabet_hash
  string.downcase!
  result = []

  string.chars.each do |char|
    result << alphabet_hash[char] unless alphabet_hash[char] == nil
  end

  result.join(' ')
end

p alphabet_position("The sunset sets at twelve o' clock.")