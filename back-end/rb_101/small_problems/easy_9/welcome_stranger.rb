def greetings(name, job)
  puts "Hello #{name.join(' ')}! Nice to have a "\
  "#{job[:title]} #{job[:job]} around."
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', job: 'Plumber' })
# => Hello, John Q Doe! Nice to have a Master Plumber around.