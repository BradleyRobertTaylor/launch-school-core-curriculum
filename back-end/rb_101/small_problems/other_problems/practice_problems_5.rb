# Write a method that takes a string as an argument and returns
# the character that occurs least often in the given string.
# If there are multiple characters with the equal lowest number
# of occurrences, then return the one that appears first in the
# string. When counting characters, consider the uppercase and
# lowercase version to be the same.

# Examples:

# p least_common_char("Hello World") #== "h"
# p least_common_char("Peter Piper picked a peck of pickled peppers") #== "t"
# p least_common_char("Mississippi") #== "m"
# p least_common_char("Happy birthday!") #== ' '
# p least_common_char("aaaaaAAAA") #== 'a'

# The tests above should print "true".

# Input: string
# Output: string (the character that occurs least often in the given string)

# Explicit:
#   - if there are multiple characters with the equal lowest number then return the character that comes first
#   - when counting the characters consider uppercase and lowercase version to be the same

# Implicit:
#   - spaces and punctuation are also considered a character

# Approach:
#   - Initialize a hash to count the characters
#   - Split up the string by characters and iterate through the string
#   - Count each letter and put into the hash
#   - Return the key that has the smallest value

def least_common_char(string)
  char_count = Hash.new(0)

  string.chars.each do |char|
    char_count[char.downcase] += 1
  end

  min_value = char_count.values.min

  char_count.each do |letter, count|
    return letter if count == min_value
  end
end

p least_common_char("Hello World") == "h"
p least_common_char("Peter Piper picked a peck of pickled peppers") == "t"
p least_common_char("Mississippi") == "m"
p least_common_char("Happy birthday!") == ' '
p least_common_char("aaaaaAAAA") == 'a'