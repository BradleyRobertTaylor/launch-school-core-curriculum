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

def palindromes(string)
  all_substrings = substrings(string)

  all_substrings.select do |string|
    string == string.reverse && string.size > 1
  end
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]