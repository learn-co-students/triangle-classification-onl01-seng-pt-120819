class Triangle

    attr_accessor :side_1, :side_2, :side_3

    def initialize(side_1, side_2, side_3)
        @side_1 = side_1
        @side_2 = side_2
        @side_3 = side_3

    end

    def kind
      validate_triangle
      if @side_1 == @side_2 && @side_1 == @side_3
          return :equilateral
      elsif @side_1 == @side_2 || @side_1 == @side_3 || @side_2 == @side_3
          return :isosceles
      else
          return :scalene

      end
    end

    def validate_triangle
      # The sum of the lengths of any two sides of a triangle always exceeds the length
      # of the third side. This is a principle known as the _triangle inequality_.
      #
      # Further, each side must be larger than 0.

  triangle = [(@side_1 + @side_2 > @side_3 ) && (@side_1 + @side_3 > @side_2) && (@side_2 + @side_3 > @side_1)]
    # if @side_1 <= 0  || @side_2 <= 0 || @side_3 <= 0
    #     raise TriangleError
      [@side_1, @side_2, @side_3].each do |side|
        if side <= 0
          triangle << false
        end
        raise TriangleError if triangle.include?(false)
      end
    end

    class TriangleError < StandardError


    end

end


#
