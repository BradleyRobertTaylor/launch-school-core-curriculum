a1 = { cello: 4, guitar: 6, erhu: 2 }
a2 = { violin: 4, viola: 4, bass: 4 }

a1.merge(a2)

puts "a1 is still the same: #{a1}"
puts "a2 stays the same: #{a2}"

a1.merge!(a2)

puts "a1 is now different: #{a1}"
puts "a2 stays the same: #{a2}"