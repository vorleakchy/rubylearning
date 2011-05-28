=begin

  Exercise2. Run the following two programs and try and understand the difference in the outputs of the two programs. The program:
  
=end

def mtdarry
 10.times do |num|
 puts num
 end
end

mtdarry

# and the program:

def mtdarry
 10.times do |num|
 puts num
 end
end

puts mtdarry

=begin

  The first program prints from 0..9 then return 10. Because when we pass the block of times as a method of Fixnum and a method is executed, then it returns itself as a last executed statement in the method mtdarry.

  The second program prints from 0..10 because the last executed statement is 10 according to the first program mentioned then we call puts method to print value 10.

=end
