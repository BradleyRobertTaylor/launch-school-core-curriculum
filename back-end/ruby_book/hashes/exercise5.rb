instr_strings = { cello: 4, guitar: 6, erhu: 2 }

if instr_strings.value?(4)
  puts "Instruments on the list have that many strings."
else
  puts "No instruments have that many strings on the list."
end