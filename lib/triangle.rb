class Triangle
  attr_accessor :one, :two, :three 
  
  def initialize(one, two, three)
    @one = one
    @two = two 
    @three = three
  end 
  
  def kind
    if (@one <= 0) || (@two <= 0) || (@three <= 0)
        raise TriangleError
    elsif (@one + @two <= @three) || (@two + @three <= @one) || (@three + @one <= @two)
        raise TriangleError
    else
      if (@one == @two) && (@two == @three)
        :equilateral 
      elsif (@one == @three) || (@two == @one) || (@three == @two)
        :isosceles
      else 
        :scalene
      end 
    end 
  end 
  
  class TriangleError < StandardError

  end 

end
