# broken_odometer.rb

car = {
  type: 'sedan', 
  color: 'blue', 
  mileage: 80_000
}

car.delete(:mileage)

puts car