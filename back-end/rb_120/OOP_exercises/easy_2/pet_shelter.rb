# butterscotch = Pet.new('cat', 'Butterscotch')
# pudding      = Pet.new('cat', 'Pudding')
# darwin       = Pet.new('bearded dragon', 'Darwin')
# kennedy      = Pet.new('dog', 'Kennedy')
# sweetie      = Pet.new('parakeet', 'Sweetie Pie')
# molly        = Pet.new('dog', 'Molly')
# chester      = Pet.new('fish', 'Chester')

# phanson = Owner.new('P Hanson')
# bholmes = Owner.new('B Holmes')

# shelter = Shelter.new
# shelter.adopt(phanson, butterscotch)
# shelter.adopt(phanson, pudding)
# shelter.adopt(phanson, darwin)
# shelter.adopt(bholmes, kennedy)
# shelter.adopt(bholmes, sweetie)
# shelter.adopt(bholmes, molly)
# shelter.adopt(bholmes, chester)
# shelter.print_adoptions
# puts "#{phanson.name} has #{phanson.number_of_pets} adopted pets."
# puts "#{bholmes.name} has #{bholmes.number_of_pets} adopted pets."

# Write the classes and methods that will be necessary to make this code run, and 
# print the following output:

# P Hanson has adopted the following pets:
# a cat named Butterscotch
# a cat named Pudding
# a bearded dragon named Darwin

# B Holmes has adopted the following pets:
# a dog named Molly
# a parakeet named Sweetie Pie
# a dog named Kennedy
# a fish named Chester

# P Hanson has 3 adopted pets.
# B Holmes has 4 adopted pets.

class Shelter
  attr_reader :adoptions

  def initialize
    @@adoptions = Hash.new
  end
  
  def adopt(owner, pet)
    if @@adoptions.keys.include?(owner)
      @@adoptions[owner] << pet
    else
      @@adoptions[owner] = [pet]
    end
  end

  def print_adoptions
    @@adoptions.each do |owner, pets|
      puts "#{owner.name} has adopted the following pets:"
      pets.each do |pet|
        puts "a #{pet.type} named #{pet.name}"
      end
      puts
    end
  end
end

class Owner < Shelter
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def number_of_pets
    @@adoptions[self].count
  end
end

class Pet
  attr_reader :type, :name

  def initialize(type, name)
    @type = type
    @name = name
  end
end

# class Pet
#   attr_reader :animal, :name

#   def initialize(animal, name)
#     @animal = animal
#     @name = name
#   end

#   def to_s
#     "a #{animal} named #{name}"
#   end
# end

# class Owner
#   attr_reader :name, :pets

#   def initialize(name)
#     @name = name
#     @pets = []
#   end

#   def add_pet(pet)
#     @pets << pet
#   end

#   def number_of_pets
#     pets.size
#   end

#   def print_pets
#     puts pets
#   end
# end

# class Shelter
#   def initialize
#     @owners = {}
#   end

#   def adopt(owner, pet)
#     owner.add_pet(pet)
#     @owners[owner.name] ||= owner
#   end

#   def print_adoptions
#     @owners.each_pair do |name, owner|
#       puts "#{name} has adopted the following pets:"
#       owner.print_pets
#       puts
#     end
#   end
# end

butterscotch = Pet.new('cat', 'Butterscotch')
pudding      = Pet.new('cat', 'Pudding')
darwin       = Pet.new('bearded dragon', 'Darwin')
kennedy      = Pet.new('dog', 'Kennedy')
sweetie      = Pet.new('parakeet', 'Sweetie Pie')
molly        = Pet.new('dog', 'Molly')
chester      = Pet.new('fish', 'Chester')

phanson = Owner.new('P Hanson')
bholmes = Owner.new('B Holmes')

shelter = Shelter.new
shelter.adopt(phanson, butterscotch)
shelter.adopt(phanson, pudding)
shelter.adopt(phanson, darwin)
shelter.adopt(bholmes, kennedy)
shelter.adopt(bholmes, sweetie)
shelter.adopt(bholmes, molly)
shelter.adopt(bholmes, chester)
puts shelter.print_adoptions
puts "#{phanson.name} has #{phanson.number_of_pets} adopted pets."
puts "#{bholmes.name} has #{bholmes.number_of_pets} adopted pets."
