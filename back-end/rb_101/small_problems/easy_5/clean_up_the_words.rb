ALPHABET = ('a'..'z').to_a

def cleanup(string)
  new_string = string.chars.map do |letter|
    ALPHABET.include?(letter) ? letter : ' '
  end

  result = ''

  new_string.each do |letter|
    next if result[-1] == ' ' && letter == ' '
    result << letter
  end

  result
end


p cleanup("---what's my +*& line?") == ' what s my line '