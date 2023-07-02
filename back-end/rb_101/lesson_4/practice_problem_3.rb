ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.delete_if {|key, value| value > 100}

# ages.keep_if { |_, age| age < 100 }
# could have also used the hash#select! method