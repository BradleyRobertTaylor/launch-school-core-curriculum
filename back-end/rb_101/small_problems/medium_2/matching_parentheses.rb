def balanced?(string)
  return false unless string.count('(') == string.count(')')
  paren_count = 0

  string.split('').each do |char|
    paren_count += 1 if char == '(' 
    paren_count -= 1 if char == ')'
    return false if paren_count < 0
  end

  true
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false