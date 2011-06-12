=begin

  Exercise4. Given the following Ruby code snippet:

  a = (1930...1951).to_a
  puts a[rand(a.size)]

  When you run this program, which of the following values will not be displayed?

  1929
  1930
  1945
  1950
  1951
  1952

  Explain why that value will not be displayed.

  Also, have a look at the splat operator:

  a = [*1930...1951] # splat operator

=end

=begin

The values 1929, 1951 and 1952 won't be displayed.
1929 and 1952 are clearly out of range.

For 1951, it is simply because we used (X...X) instead of (X..X). ... is an exclusive range, excluding the second argument from the range.

1950 doesn't display because we will not get the last index of array by using rand(a.size)
according to the lesson link http://rubylearning.com/satishtalim/ruby_random_numbers.html

a.size = 21
rand(21), you will get an integer value greater than or equal to 0 and less than 21.

But I still wonder why these two number "1930, 1945" will not be displayed as well?

The splat operator is also a shortcut to convert range object to array.
a = [*1930...1951] # it's the same as (1930...1951).to_a

=end
