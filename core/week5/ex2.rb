=begin

  Exercise2. This exercise thanks to Kathy Sierra. Once upon a time in a software shop, two programmers were given the same spec and told to "build it". The Really Annoying Project Manager forced the two coders to compete, by promising that whoever delivers first gets one of those cool Aeron chairs all the Silicon Valley guys have. The spec. There will be shapes on a GUI, a square, a circle and a triangle. When the user clicks on a shape, the shape will rotate clockwise 360 degrees (ie. all the way around) and play an AIF sound file specific to that particular shape. Go for it guys and show me your code.

  Note: This exercise is about inheritance, method overriding and method overloading not about UI.

=end

class Shape
  def click
    puts rotate
    puts play_sound
  end

  def rotate
    raise "Need to override in sub class"
  end

  def sound_file
    "default_shape_sound.mp3"
  end

  private
  
  def play_sound
    "Playing sound from file: #{sound_file}"
  end
end
 
class Square < Shape
  def rotate
    "Rotating square"
  end
  
  def sound_file
    "square_sound.mp3"
  end
end

class Circle < Shape
  def rotate
    "You may not see the circle is rotating"
  end
  
  def sound_file
    "circle_sound.mp3"
  end
end

class Triangle < Shape
  def rotate
    "Rotating triangle"
  end
  
  def sound_file
    "triangle_sound.mp3"
  end
end

# Run program
[Square.new, Circle.new, Triangle.new].each { |shape| shape.click }
