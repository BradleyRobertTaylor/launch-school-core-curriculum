ALPHABET = ('A'..'Z').to_a + ('a'..'z').to_a

# def staggered_case(string)
#   result = ''
  
#   string.chars.each_with_index do |char, index|
#     if index.even?
#       result << char.upcase
#     else
#       result << char.downcase
#     end
#   end
  
#   result
# end

def staggered_case(string)
  result = ''
  index = 0
  counter = 0

  loop do
    if counter.even?
      result << string.chars[index].upcase
    else
      result << string.chars[index].downcase
    end

    index += 1
    counter += 1 if ALPHABET.include?(string.chars[index])
    break if result.size == string.size
  end

  result
end

# p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
# p staggered_case('ALL_CAPS') == 'AlL_CaPs'
# p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'