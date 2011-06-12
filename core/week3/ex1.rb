=begin

  Exercise1. Why is the output of this program:

=end

def method
 a = 50
 puts a
end

a = 10
method
puts a

as shown below:

50
10

# Two Fixnums created and handled in two very separate parts of the same program (or different programs for that matter) will have the same object_id (single instance).
# Reference link: http://rubylearning.org/class/mod/forum/discuss.php?d=4873&parent=63901
