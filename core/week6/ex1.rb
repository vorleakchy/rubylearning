=begin

  Exercise1. Write a class called Person that has balance as an instance variable and make it readable via an accessor.

=end

class Person
  attr_reader :balance

  def initialize(balance = 0)
    @balance = balance
  end
end

# Run program
puts Person.new(100).balance
