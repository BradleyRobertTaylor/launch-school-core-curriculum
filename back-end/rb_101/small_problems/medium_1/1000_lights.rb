# initialize lights array
def initialize_lights(num)
  (1..num).to_a.map { |num| "on" }
end

# return list of lights that are on
def check_lights(switches)
  result = []
  switches.each_with_index do |light, index|
    result << index + 1 if light == "on"
  end
  result
end

# runs entire program
# toggles every nth light and returns switches that are still on
def toggle_lights(total_switches)
  lights = initialize_lights(total_switches)
  counter = 2

  loop do
    lights.each_with_index do |switch, index|
      if (index + 1) % counter == 0
        lights[index] == "on" ? lights[index] = "off" : lights[index] = "on"
      end
    end

    counter += 1
    break if counter > lights.length
  end

  check_lights(lights)
end
p toggle_lights(5)
p toggle_lights(10)
p toggle_lights(1000)











