class Triangle

  attr_accessor :side_1, :side_2, :side_3

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind
    validate_triangle  #calls validate_triangle and then compares sides to find which kind of triangle it is
    if side_1 == side_2 && side_2 == side_3
      :equilateral
    elsif side_1 == side_2 || side_2 == side_3 || side_1 == side_3
      :isosceles
    else
      :scalene
    end
  end

  def validate_triangle
    real_triangle = [(side_1 + side_2 > side_3), (side_1 + side_3 > side_2), (side_2 + side_3 > side_1)] #possible triangles
    [side_1, side_2, side_3].each do |side| #iterate over sides to validate a triangle
      real_triangle << false if side <= 0  #if any sides are less than or equal to 0, real_triangle is "false"
    raise TriangleError if real_triangle.include?(false) #raises error when false 
    end
  end

  class TriangleError < StandardError
  end
end
