def triangle(angle1, angle2, angle3)
  angles = [angle1, angle2, angle3]

  case
  when angles.sum != 180, angles.include?(0)
    :invalid
  when angles.include?(90) then :right
  when obtuse?(angles) then :obtuse
  when acute?(angles) then :acute
  end
end

def obtuse?(angles)
  angles.each do |angle|
    return true if angle > 90
  end
  false
end

def acute?(angles)
  angles.each do |angle|
    return true if angle < 90
  end
  false
end


p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid

# def triangle(angle1, angle2, angle3)
#   angles = [angle1, angle2, angle3]

#   case
#   when angles.reduce(:+) != 180, angles.include?(0)
#     :invalid
#   when angles.include?(90)
#     :right
#   when angles.all? { |angle| angle < 90 }
#     :acute
#   else
#     :obtuse
#   end
# end