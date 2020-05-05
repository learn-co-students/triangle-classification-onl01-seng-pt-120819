class Triangle
  attr_accessor :side1, :side2, :side3
  def initialize(s1, s2, s3)
    @side1 = s1
    @side2 = s2
    @side3 = s3
  end

  def kind
    if @side1+@side2>@side3&&@side1+@side3>@side2&&@side2+@side3>@side1
      if @side1==@side2&&@side1==@side3&&@side2==@side3
        return :equilateral
      elsif (@side2==@side3&&@side1!=@side3&&@side1!=@side2)||(@side1==@side3&&@side2!=@side3&&@side2!=@side1)||(@side1==@side2&&@side3!=@side1&&@side3!=@side2)
        return :isosceles
      else
        return :scalene
      end
    else
      raise TriangleError
    end
  end

  class TriangleError < StandardError
    # triangle error code
  end
end
