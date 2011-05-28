=begin

  Exercise3. Write a method leap_year?. It should accept a year value from the user, check whether it's a leap year, and then return true or false. With the help of this leap_year?() method calculate and display the number of minutes in a leap year (2000 and 2004) and the number of minutes in a non-leap year (1900 and 2005). Note: Every year whose number is divisible by four without a remainder is a leap year, excepting the full centuries, which, to be leap years, must be divisible by 400 without a remainder. If not so divisible they are common years. 1900, therefore, is not a leap year.

=end

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
DAYS_PER_NORMAL_YEAR = 365
DAYS_PER_LEAP_YEAR = 366

def minutes_per_day
  MINUTES_PER_HOUR * HOURS_PER_DAY
end

def leap_year?(year)
  (year % 100).zero? ? (year % 400).zero? : (year % 4).zero?
end

def minutes_in_a_year(year)
  days_per_year = leap_year?(year) ? DAYS_PER_LEAP_YEAR : DAYS_PER_NORMAL_YEAR
  minutes_per_day * days_per_year
end

# Leap years
[2000, 2004].each { |year| puts minutes_in_a_year(year) }

# Non-leap years
[1900, 2005].each { |year| puts minutes_in_a_year(year) }
