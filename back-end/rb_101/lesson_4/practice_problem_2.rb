ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

# p ages.values.sum

def add_ages(hash)
  ages_arr = hash.values
  counter = 0
  total_ages = 0

  loop do
    break if counter == ages_arr.size
    total_ages += ages_arr[counter]
    counter += 1
  end

  total_ages
end

p add_ages(ages)

# total_ages = 0
# ages.each { |_,age| total_ages += age }
# total_ages # => 6174