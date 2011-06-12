=begin

  Exercise8. Write a Ruby program that prints the numbers from 1 to 100. But for multiples of three print "Fizz" instead of the number and for multiples of five print "Buzz". For numbers which are multiples of both three and five print "FizzBuzz".

=end

1.upto(100) do |number|
  text = ""
  text = "Fizz" if number % 3 == 0
  text += "Buzz" if number % 5 == 0
  puts text.empty? ? number : text
end
