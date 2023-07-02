# Program written to determine whether a triangle is equilateral, isosceles,
# or scalene.

class Triangle
  attr_reader :sides

  def initialize(side1, side2, side3)
    @sides = [side1, side2, side3]    
    raise ArgumentError.new("Not valid triangle") unless valid_triangle?
  end

  def kind
    case
    when equilateral? then "equilateral"
    when isosceles? then   "isosceles"
    else                   "scalene"
    end
  end

  def equilateral?
    sides.uniq.size == 1
  end

  def isosceles?
    sides.uniq.size == 2
  end

  private

  def valid_triangle?
    sides.min > 0 &&
    sides[0] + sides[1] > sides[2] &&
    sides[1] + sides[2] > sides[0] &&
    sides[0] + sides[2] > sides[1]
  end
end