=begin

  Exercise4. Write a Ruby program (call it p028swapcontents.rb) to do the following. Take two text files say A and B. The program should swap the contents of A and B. That is after the program is executed, A should contain B's contents and B should contains A's contents.

=end

class FileManager
  def self.swap(file1, file2)
    temp_file = "temp_file.bak"
    File.rename(file1, temp_file)
    File.rename(file2, file1)
    File.rename(temp_file, file2)
  end
end

# Run program
FileManager.swap("file1.txt", "file2.txt")
