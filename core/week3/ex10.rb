=begin

  Exercise10. Write a Ruby program that, when given an array: collection = [1, 2, 3, 4, 5] calculates the sum of its elements.

=end

collection = [1, 2, 3, 4, 5]

# Solution 1
collection.inject(0) {|sum, number| sum += number }

# Solution 2
collection.inject(:+)

