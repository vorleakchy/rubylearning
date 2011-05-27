=begin

	Exercise1. Before executing the code given below, guess the results. Next, execute the code. Did you get it right? If you did not get it right, can you think of why?

	Discuss your first guess and what you got when running the code. 
	Goal: Understanding operator precedence and association.

=end

y = false
z = true
x = y or z
puts x
# x = false, the assignment operator takes precedence over the 'or' operation

(x = y) or z
puts x
# x = false, the parentheses take precedence over the 'or' operation
# the same to ((x = y) or z)

x = (y or z)
puts x
# x = true, uses parentheses to change the operator precedence
# the same to x = y || z
