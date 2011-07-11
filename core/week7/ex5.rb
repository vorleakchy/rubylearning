=begin

  Exercise5. Let's say you want to run some Ruby code (such as a call to a shell command) repeatedly at a certain interval (for example, once every five seconds for one minute). Write a method for this. Do not use Thread class for now. Hint: yield and sleep methods may be required.

=end

def repeat_process(interval, repeated_times=3)
  1.upto(repeated_times) do |time|
    yield
    sleep interval if time < repeated_times
  end
end

repeat_process(5) { system("ps aux | grep '12345'") }
