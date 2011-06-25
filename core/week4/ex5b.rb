=begin
  
  Continue ex5:

  Name this program inventory.rb. Create an inventory file by typing the following at the command prompt:

  ruby inventory.rb > old-inventory.txt

  After a few days, when some files would have been added / deleted from this folder, run the program again like:

  ruby inventory.rb > new-inventory.txt

  Now, write another Ruby script that displays on the screen all the files that have been added in this folder since the time the old-inventory.txt was created.

=end

class FileChanged
  def initialize(old_file, new_file)
    @old_file = old_file
    @new_file = new_file
  end
  
  def added_files
    @added_files ||= File.readlines(@new_file) - File.readlines(@old_file)
  end
end

puts FileChanged.new("old-inventory.txt", "new-inventory.txt").added_files
