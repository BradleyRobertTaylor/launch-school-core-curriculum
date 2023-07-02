# Move the first letter of each word to the end of it, then add "ay" to the end of the word.
# Leave punctuation marks untouched.

def pig_it(string)
  punctuation = %w(! , . ?)
  string.split.map do |word|
    punctuation.include?(word) ? word : word[1..-1] + word[0] + 'ay'
  end.join(' ')
end 






p pig_it('Pig latin is cool') # igPay atinlay siay oolcay
p pig_it('Hello world !')     # elloHay orldway !
