# In this simple Kata your task is to create a function that turns 
# a string into a Mexican Wave. You will be passed a string and you 
# must return that string in an array where an uppercase letter is a 
# person standing up.

# wave("hello") => ["Hello", "hEllo", "heLlo", "helLo", "hellO"]

def wave(string)
  word = string.clone
  result = []

  (0...string.length).to_a.each do |index|
    word[index] = word[index].upcase 
    result << word
    word = string.clone
  end

  result.delete(string)
  result
end

p wave("hello")
p wave(" gap ")