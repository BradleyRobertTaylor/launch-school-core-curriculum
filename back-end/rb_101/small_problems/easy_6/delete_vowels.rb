VOWELS = %w( a e i o u A E I O U )

def remove_vowels_word!(string)
  VOWELS.each do |vowel|
    string.delete!(vowel)
  end

  string
end

def remove_vowels(strings)
  strings.map { |string| remove_vowels_word!(string) }
end

# def remove_vowels(strings)
#   strings.map { |string| string.delete('aeiouAEIOU') }
# end


p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']