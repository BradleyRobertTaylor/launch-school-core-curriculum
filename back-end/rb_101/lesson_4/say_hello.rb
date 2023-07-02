say_hello = true
counter = 1

while say_hello
  puts 'Hello!'
  if counter == 5
    say_hello = false
  else
    counter += 1
  end
end