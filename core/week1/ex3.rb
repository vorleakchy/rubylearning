=begin

  Exercise3. Write a Ruby program that displays how old I am, if I am 979000000 seconds old. Display the result as a floating point (decimal) number to two decimal places (for example, 17.23).
  Note: To format the output to say 2 decimal places, we can use the Kernel's format method. For example, if x = 45.5678 then format("%.2f", x) will return the string 45.57
	
=end

SECONDS_PER_MINUTE = 60
MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
DAYS_PER_YEAR = 365

def seconds_per_year
  SECONDS_PER_MINUTE * MINUTES_PER_HOUR * HOURS_PER_DAY * DAYS_PER_YEAR
end

def seconds_to_years(seconds)
  format("%.2f", seconds.to_f / seconds_per_year)
end

puts seconds_to_years(979000000)
# Result: 31.04
