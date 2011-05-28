=begin

	Exercise4. Write a Ruby program that tells you how many minutes there are in a year (do not bother right now about leap years etc.).
	
=end

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
DAYS_PER_YEAR = 365

def minutes_in_year
	MINUTES_PER_HOUR * HOURS_PER_DAY * DAYS_PER_YEAR
end

puts minutes_in_year
# Result: 525600
