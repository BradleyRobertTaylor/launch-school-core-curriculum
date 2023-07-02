def leading_substrings(string)
  substrings = []
  current_str = ''
  
  string.split('').each do |char|
    current_str += char
    substrings << current_str
  end

  substrings
end

# def leading_substrings(string)
#   substrings = []
#   string.chars.each_with_index do |char, idx|
#     substrings << string.chars[0..idx].join
#   end
#   substrings
# end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

# def leading_substrings(string)
#   result = []
#   0.upto(string.size - 1) do |index|
#     result << string[0..index]
#   end
#   result
# end