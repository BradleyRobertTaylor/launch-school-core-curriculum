# dayornight?

daylight = [true,false].sample

def time_of_day(boolean)
	if boolean == true
		puts "It's daylight!"
	else
		puts "It's nighttime!"
	end
end


time_of_day(daylight)


