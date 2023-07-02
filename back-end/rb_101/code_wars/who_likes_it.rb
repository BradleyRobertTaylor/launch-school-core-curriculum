def likes(names)
  other_names = names.size - 2
  
  if names.size == 0
    "no one likes this"
  elsif names.size == 1
    "#{names[0]} lkes this"
  elsif names.size == 2
    "#{names[0]} and #{names[1]} like this"
  elsif names.size == 3
    "#{names[0]}, #{names[1]} and #{names[2]} like this"
  else
    "#{names[0]}, #{names[1]} and #{other_names} others like this"
  end
end

p likes([])                                #-->  "no one likes this"
p likes(["Peter"])                         #-->  "Peter likes this"
p likes(["Jacob", "Alex"])                 #-->  "Jacob and Alex like this"
p likes(["Max", "John", "Mark"])           #-->  "Max, John and Mark like this"
p likes(["Alex", "Jacob", "Mark", "Max"])  #-->  "Alex, Jacob and 2 others like this"