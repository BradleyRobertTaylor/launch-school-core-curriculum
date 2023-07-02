def century(year)
  century = 1

  (0..year).to_a.each do |year|
    century += 1 if year.to_s.end_with?('01')
  end

  suffix!(century.to_s)
end

def suffix!(num_string)
  case
  when (10..20).include?(num_string[-2, 2].to_i)
    num_string << 'th'
  when num_string[-1] == '1' then num_string << 'st'
  when num_string[-1] == '2' then num_string << 'nd'
  when num_string[-1] == '3' then num_string << 'rd'
  else num_string << 'th'
  end
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'