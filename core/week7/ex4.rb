=begin

  Exercise4. Write a method last_modified(file) that takes a file name and displays something like this: file was last modified 125.873605469919 days ago. Use the Time class.

=end

def last_modified(filename)
  Time.now - File.new(filename).mtime
end

def seconds_to_days(seconds)
  (seconds.to_f / 60 / 60 / 24)
end

puts "%.2f" % seconds_to_days(last_modified(ARGV.first))
