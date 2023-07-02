LOWERCASE = ('a'..'z').to_a
UPPERCASE = ('A'..'Z').to_a

def letter_case_count(string)
  letter_cases = { lowercase: 0, uppercase: 0, neither: 0 }

  string.chars.each do |char|
    if LOWERCASE.include?(char)
      letter_cases[:lowercase] += 1
    elsif UPPERCASE.include?(char)
      letter_cases[:uppercase] += 1
    else
      letter_cases[:neither] += 1
    end
  end

  letter_cases
end


p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }