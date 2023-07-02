def print_in_box(text)
  spaces = " " * (text.length + 1)
  dashes = "-" * (text.length + 1)
  puts "+--#{dashes}+"
  puts "|#{spaces}  |"
  puts "| #{text}  |"
  puts "|#{spaces}  |"
  puts "+--#{dashes}+"
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')

