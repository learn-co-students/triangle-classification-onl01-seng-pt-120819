require 'pry'
class Triangle
   
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
      @side1 = side1
      @side2 = side2 
      @side3 = side3
  end 

  def kind 
    if (self.side1 <= 0 || self.side2 <= 0 || self.side3 <= 0) || (self.side1 + self.side2 <= self.side3 || self.side2 + self.side3 <= self.side1 || self.side1 + self.side3 <= self.side2)   
      begin
        raise TriangleError
      rescue TriangleError => error
         error.noSizeError
      end    
    else 
      if self.side1 == self.side2 && self.side2 == self.side3 
        :equilateral
      elsif self.side2 == self.side3 || self.side1 == self.side3 || self.side1 == self.side2
        :isosceles
      elsif self.side2 != self.side3 || self.side1 != self.side3 || self.side1 != self.side2
        :scalene
      end
    end
  end 

    class TriangleError < StandardError
      def noSizeError
        puts "My awesome custom error message"
      end
    end 
# binding.pry
end
