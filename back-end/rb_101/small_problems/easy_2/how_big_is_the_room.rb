# puts '==> Enter the length of the room in meters:'
# length = gets.chomp.to_f

# puts '==> Enter the width of the room in meters:'
# width = gets.chomp.to_f


# area_meters = length * width

# area_feet = (area_meters * 10.7639).round(2)

# puts "The area of the room is #{area_meters} square meters " + \
# "(#{area_feet} square feet)."


# Enter the length of the room in meters:
# 10
# Enter the width of the room in meters:
# 7
# The area of the room is 70.0 square meters (753.47 square feet).

SQFEET_TO_SQINCHES = 12
SQFEET_TO_SQCENT = 30.48

def prompt(string)
  puts '==> ' + string
end

prompt('Enter the length of the room in feet:')
length = gets.chomp.to_f

prompt('Enter the width of the room in feet:')
width = gets.chomp.to_f

sq_ft = length * width
sq_in = (sq_ft * SQFEET_TO_SQINCHES).round(2)
sq_cm = (sq_ft * SQFEET_TO_SQCENT).round(2)

puts "The area of the room is #{sq_ft} square feet (#{sq_in} square " + \
  "inches, #{sq_cm} square centimeters)."
