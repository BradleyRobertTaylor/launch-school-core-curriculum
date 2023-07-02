flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.each do |name|
  if name.start_with?('Be')
    puts "The index is #{flintstones.index(name)}."
  end
end

# flintstones.index { |name| name[0, 2] == "Be" }