ALPHABET = ('a'..'z').to_a

def equal_characters?(string)
  letter_count = []

  ALPHABET.each do |letter|
    if string.count(letter) > 0
      letter_count << string.count(letter)
    end
  end

  letter_count.uniq.size == 1 
end


def repeated_substring_pattern(string)
  return true if equal_characters?(string) == true

  letters = string.split('')
  comparison_arr = []
  
  while letters.size != 0
    comparison_arr << letters[0]
    letters.delete_at(0)
    return true if comparison_arr == letters
  end

  false
end

p repeated_substring_pattern('abab') #== true
p repeated_substring_pattern('aba') #== false
p repeated_substring_pattern('aabaaba') #== false
p repeated_substring_pattern('abaababaab') #== true
p repeated_substring_pattern('abcabcabcabc') #== true