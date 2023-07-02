def check_blocks?(blocks, num_checked)
  counter = 0
  blocks.each do |block|
    counter += 1 if block == 0
  end

  counter == num_checked ? true : false
end

def block_word?(string)
  blocks = [['B', 'O'], ['X', 'K'], ['D', 'Q'], ['C', 'P'],
            ['N', 'A'], ['G', 'T'], ['R', 'E'], ['F', 'S'],
            ['J', 'W'], ['H', 'U'], ['V', 'I',], ['L','Y'],
            ['Z', 'M']
]
  string_letters = string.upcase.chars
  result = []
  num_checked = string.length
  

  blocks.map! do |block|
    if block.include?(string_letters[0])
      0
    elsif block.include?(string_letters[1])
      0
    elsif block.include?(string_letters[2])
      0
    elsif block.include?(string_letters[3])
      0
    elsif block.include?(string_letters[4])
      0
    else
      block
    end
  end

  check_blocks?(blocks, num_checked)
ends




p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true


# Blocks
# B:O   X:K   D:Q   C:P   N:A
# G:T   R:E   F:S   J:W   H:U
# V:I   L:Y   Z:M

# input: string
# ouput: return booleean true if word can be spelled from blocks
#        false if word can be spelled
# Explicit requirements:
#   - Blocks only have two letters
#   - Once a letter is used to spell the word the other letter on the block can't be used

# Initialize array with nested arrays blocks
#   - Each nested array will be a 'block' with two letters in integer
# Split up word passed in as argument to block_word? method
# Iterate over split up word and see if each letter is included in the blocks
# When letter is matched remove that block from blocks
# Return false if one letter can't be found, return true if all letters can be found