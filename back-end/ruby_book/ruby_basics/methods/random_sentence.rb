# random_sentence.rb

names = ['Dave', 'Sally', 'George', 'Jessica']
activities = ['walking', 'running', 'cycling']

def name(array)
  array.sample
end

def activity(array)
  array.sample
end

def sentence(name, activity)
  print name + " went " + activity + " today!"
end

puts sentence(name(names), activity(activities))
