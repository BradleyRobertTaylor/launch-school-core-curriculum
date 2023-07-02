instr_strings = { cello: 4, guitar: 6, erhu: 2 }

instr_strings.each { |key, value| puts key }
instr_strings.each { |key, value| puts value }
instr_strings.each do |key, value|
  puts "The #{key} has #{value} strings."
end


