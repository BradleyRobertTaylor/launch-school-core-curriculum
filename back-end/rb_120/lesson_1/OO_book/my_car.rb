module Speed
  def is_it_fast?(hp)
    hp > 400 ? "Pretty fast!" : "Needs more hp!"
  end
end

class Vehicle
  attr_accessor :color, :model
  attr_reader :year

  @@vehicles = 0

  def initialize(y, c, m)
    @year = y
    @color = c 
    @model = m
    @current_speed = 0
    @@vehicles += 1
  end

  def self.vehicles
    puts "There have been #{@@vehicles} vehicles created."
  end

  def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon of gas."
  end

  def speed_up(number)
    @current_speed += number
    puts "You push the gas and accelerate #{number} mph."
  end

  def brake(number)
    @current_speed -= number
    puts "You push the brake and decelerate #{number} mph."
  end

  def current_speed
    puts "You are now going #{@current_speed} mph."
  end

  def shut_down
    @current_speed = 0
    puts "Let's park this bad boy!"
  end

  def spray_paint(color)
    # self.color uses the setter method while @color uses the instance variable
    # setter method better if you already have it
    self.color = color
    puts "The color is now #{color}."
  end

  def age
    "Your #{self.model} is #{years_old} years old."
  end

  private

  def years_old
    Time.now.year - self.year.to_i
  end
end

class MyCar < Vehicle
  include Speed

  TRUNK = 1

  def to_s
    puts "My car is a #{color}, #{year}, #{model}!"
  end
end

class MyTruck < Vehicle
  TRUCK_BED = 1

  def to_s
    puts "My truck is a #{color}, #{year}, #{model}!"
  end
end

brads_car = MyCar.new(2016, 'black', 'Ford Fiesta')
adrians_truck = MyTruck.new(2020, 'white', 'Ford F-150')

brads_car.speed_up(30)
brads_car.current_speed

adrians_truck.spray_paint('blue')
puts adrians_truck.age
puts brads_car.age

