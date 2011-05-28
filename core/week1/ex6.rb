=begin

  Exercise6. Write a method called convert that takes one argument which is a temperature in degrees Fahrenheit. This method should return the temperature in degrees Celsius. 
  To format the output to say 2 decimal places, we can use the Kernel's format method. For example, if x = 45.5678 then format("%.2f", x) will return the string 45.57. Another way is to use the round function as follows: 
  puts (x*100).round/100.0
	
=end

def convert(temp_degrees_fahrenheit)
  format("%.2f", (temp_degrees_fahrenheit - 32) * (5.0 / 9) )
end

puts convert(98.6)
# Result: 37.00
