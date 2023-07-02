def crunch(string)
  result = ''
  string.chars.each do |char|
    result << char unless result[-1] == char
  end
  result
end

p crunch('ddaaiillyy ddoouubbllee') #== 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''