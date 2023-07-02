arr = ["Brandon", "Derek", "Carter", "Adrian"]

arr.each_with_index do |friend, ind|
  puts "#{ind}. #{friend}"
end