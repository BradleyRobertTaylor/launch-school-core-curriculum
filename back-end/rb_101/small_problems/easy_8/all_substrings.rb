def leading_substrings(string)
  substrings = []
  string.chars.each_with_index do |char, idx|
    substrings << string.chars[0..idx].join
  end
  substrings
end

def substrings(string)
  result = []
  index = 0

  while index < string.size
    result << leading_substrings(string[index..-1])
    index += 1
  end

  result.flatten
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]