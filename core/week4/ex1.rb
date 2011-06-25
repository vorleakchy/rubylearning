=begin

  Exercise1. Write a class called Dog, that has name as an instance variable and the following methods:
  bark(), eat(), chase_cat()
  
  I shall create the Dog object as follows:
  d = Dog.new('Leo')

=end

class Dog
  attr_reader :bark, :eat, :chase_cat

  def initialize(name)
    @name = name
  end
end
