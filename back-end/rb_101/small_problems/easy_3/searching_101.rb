def prompt(string)
  puts '==> ' + string
end

order = [ '1st', '2nd', '3rd', '4th', '5th', 'last' ]

answer_arr = []

order.each do |num|
  prompt "Enter the #{num} number:"
  answer_arr << gets.chomp.to_i
end

num_arr = answer_arr[0, 5]
search_num = answer_arr[5]

if num_arr.include?(search_num)
  puts "The number #{search_num} appears in #{num_arr}."
else
  puts "The number #{search_num} does not appear in #{num_arr}."
end

