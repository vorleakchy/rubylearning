=begin

  Exercise2. Read the sprintf documentation and the % documentation in the String class and figure out the output being printed by of this Ruby code.
	
=end

puts "%05d" % 123
# Result: 00123

# 0 = pad with zeros
# 5 = the number of zeros to pad to
# d = convert argument as a decimal number
