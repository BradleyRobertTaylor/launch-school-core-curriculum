def reverse_words(string)
  string.reverse.split.select do |word|
    word.length >= 5
  end.join(' ')
end




puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => kcolb dnuora
puts reverse_words('Launch School')         # => hcnuaL loohcS