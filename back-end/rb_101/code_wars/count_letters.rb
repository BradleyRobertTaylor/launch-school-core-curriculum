def letter_count(str)
  counts = Hash.new(0)
  str.split('').each do |letter|
    counts[letter.to_sym] += 1
    end
    
    counts
end

p letter_count('codewars')