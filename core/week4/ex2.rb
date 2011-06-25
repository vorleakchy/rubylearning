=begin

  Exercise2. Write a Rectangle class. I shall use your class as follows:

  r = Rectangle.new(23.45, 34.67)
  puts "Area is = #{r.area}"
  puts "Perimeter is = #{r.perimeter}"

=end

class Rectangle
  def initialize(width, height)
    @width = width
    @height = height
  end
  
  def area
    @area ||= @width * @height
  end
  
  def perimeter
    @perimeter ||= 2 * (@width + @height)
  end
end

# Run program
rec = Rectangle.new(6.5, 10)
rec.area
rec.perimeter

# Call methods again, it avoids calculating each time by using ||= 
rec.area
rec.perimeter

=begin
  Another way to do this move calculation in initialization:

  class Rectangle
    attr_reader :area, :perimeter

    def initialize(width, height)
      @area = width * height
      @perimeter = 2 * (width + height)
    end
  end
=end
