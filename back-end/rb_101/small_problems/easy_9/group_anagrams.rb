words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

# def anagram?(word_1, word_2)
#   word_1.chars.sort == word_2.chars.sort
# end

# result = []
# index = 0
# counter = 0

# loop do
#   if anagram?(words[index], words[counter])
#     result << words[index] << words[counter]
#   end

#   counter += 1

#   if counter == words.size
#     index += 1
#     counter = 0
#   end

#   break if index == words.size
# end

# p result.uniq

result = {}

words.each do |word|
  key = word.split('').sort.join
  if result.has_key?(key)
    result[key].push(word)
  else
    result[key] = [word]
  end
end

result.each_value do |v|
  puts "------"
  p v
end