ALPHABET = ('a'..'z').to_a + ('A'..'Z').to_a

def cleanup!(string)
  string.chars.each do |char|
    string.delete!(char) unless ALPHABET.include?(char)
  end
end

def word_sizes(string)
  word_sizes_hash = Hash.new(0)

  string.split(' ').each do |word|
    cleanup!(word)
    word_sizes_hash[word.size] += 1
  end

  word_sizes_hash
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}