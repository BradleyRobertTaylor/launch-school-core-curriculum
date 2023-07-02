words = "the flintstones rock"

# def titleize(string)
#   string_arr = string.split.map do |word|
#                  word.capitalize
#                 end
#   string_arr.join(' ')
# end

def titleize(string)
  string.split.map do |word|
    word.capitalize
  end.join(' ')
end

puts titleize(words)

# words.split.map { |word| word.capitalize }.join(' ')