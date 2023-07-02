munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# p munsters.values[0]["age"]
counter = 0

munsters.values.map do |element|
  if munsters.values[counter]['age'] < 17
    element['age_group'] = 'kid'
  elsif munsters.values[counter]['age'] > 17 && munsters.values[counter]['age'] < 64
    element['age_group'] = 'adult'
  else
    element['age_group'] = 'senior'
  end
  counter += 1
end

p munsters

# munsters.each do |name, details|
#   case details["age"]
#   when 0...18
#     details["age_group"] = "kid"
#   when 18...65
#     details["age_group"] = "adult"
#   else
#     details["age_group"] = "senior"
#   end
# end


