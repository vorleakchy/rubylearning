=begin

	Exercise5. The following program prints the value of the variable. Why?
	
=end

my_string = 'Hello Ruby World'

def my_string
  'Hello World'
end

puts my_string

=begin

	Because my_string is a bareword (starting with a lowercase letter or an underscore and containing only letters, numbers or underscores), and the interpreter will categorize barewords as follows:

	1. Is the bareword left of an assignment? If so, then it is a variable.
	2. If not 1, and the bareword occurs in Ruby's internal list of predefined keywords, than it is a keyword
	3. If not 2, then it is a method call. If no method call with this name exists, a NameError is raised.

	In this case, condition 1 is true on the first line 

=end
