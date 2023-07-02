# def reverse_sentence(string)
#   reverse_array = []
#   string.split(' ').each do |element|
#     reverse_array << element
#   end
#   reverse_array.reverse.join(' ')
# end


def reverse_sentence(string)
  string.split.reverse.join(' ')
end





puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''