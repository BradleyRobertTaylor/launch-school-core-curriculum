# Given a string that includes alphanumeric characters ('3a4B2d') return 
# the expansion of that string: The numeric values represent the occurrence of 
# each letter preceding that numeric value. There should be no numeric characters in 
# the final string. Empty strings should return an empty string.

# The first occurrence of a numeric value should be the number of times each 
# character behind it is repeated, until the next numeric value appears.

INTEGERS = %w(0 1 2 3 4 5 6 7 8 9)

def string_expansion(string)
  multiplier = 1
  result = []

  string.chars.each do |char|
    if INTEGERS.include?(char)
      multiplier = char.to_i
    else
      result << char * multiplier
    end
  end

  result.join
end


p string_expansion('3D2a5d2f') #== 'DDDaadddddff'
p string_expansion('3abc') #== 'aaabbbccc'       # correct
p string_expansion('3abc') #!= 'aaabc'           # wrong
p string_expansion('3abc') #!= 'abcabcabc'       # wrong
p string_expansion('3d332f2a') #== 'dddffaa'