class Triangle
  attr_accessor :side_one, :side_two, :side_three
  
  def initialize(attributes)
   attributes.each {|key, value| self.send(("#{key}="), value)} 
end

def triangle
if side_one = side_two + side_three
      begin
        raise TriangleError
      rescue TriangleError => error
          puts error.message
      end
    else
      it's a triangle
    end 
  end
  
  
  




class TriangleError < StandardError
  def message
    "The sum of the lengths of any two sides of a triangle always exceeds the length of the third side."
  end

end
