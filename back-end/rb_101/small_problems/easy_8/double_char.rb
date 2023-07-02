CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)

def repeater(string)
  string.chars.map { |char| char * 2 }.join
end

def double_consonants(string)
  result = ''
  string.chars.each do |char|
    result << char
    result << char if CONSONANTS.include?(char.downcase)
  end
  result
end

# p repeater('Hello') == "HHeelllloo"
# p repeater("Good job!") == "GGoooodd  jjoobb!!"
# p repeater('') == ''

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""