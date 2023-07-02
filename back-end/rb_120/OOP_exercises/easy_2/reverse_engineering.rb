# Write a class that will display:
# ABC
# xyz

# when the following code is run:

# my_data = Transform.new('abc')
# puts my_data.uppercase
# puts Transform.lowercase('XYZ')

class Transform
  def initialize(letters)
    @letters = letters
  end

  def self.lowercase(str)
    str.downcase
  end

  def uppercase
    @letters.upcase
  end
end

my_data = Transform.new('abc')
puts my_data.uppercase
puts Transform.lowercase('XYZ')