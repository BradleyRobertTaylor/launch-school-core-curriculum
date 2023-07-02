UPPERCASE = ('A'..'Z').to_a
LOWERCASE = ('a'..'z').to_a

def letter_case_count(string)
  count = { lowercase: 0, uppercase: 0, neither: 0 }

  string.split('').each do |char|
    if UPPERCASE.include?(char)
      count[:uppercase] += 1
    elsif LOWERCASE.include?(char)
      count[:lowercase] += 1
    else
      count[:neither] += 1
    end
  end

  count
end

def letter_percentages(string)
  count = letter_case_count(string)
  character_total = string.length
  percent_count = Hash.new

  percent_count[:lowercase] = (count[:lowercase].to_f / character_total) * 100
  percent_count[:uppercase] = (count[:uppercase].to_f / character_total) * 100
  percent_count[:neither] = (count[:neither].to_f / character_total) * 100

  percent_count
end



p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }