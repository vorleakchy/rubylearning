require './lesson7exercise1'

obj = Klass.new('hello')
filename = 'klass'

File.open(filename, 'w+') { |f| Marshal.dump(obj, f) }

File.open(filename) do |f|
  new_obj = Marshal.load(f)
  puts new_obj.say_hello
end
