flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

flintstones = flintstones.to_h {|key, value| [key, key]}


flintstones['Fred'] = 0
flintstones['Barney'] = 1
flintstones['Wilma'] = 2
flintstones['Betty'] = 3
flintstones['Pebbles'] = 4
flintstones['BamBam'] = 5

p flintstones

# flintstones_hash = {}
# flintstones.each_with_index do |name, index|
#   flintstones_hash[name] = index
# end