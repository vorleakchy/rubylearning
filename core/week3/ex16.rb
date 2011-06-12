=begin
  
  Exercise16. Select all correct ways to do an ascending sort by string length.
a = ["Magazine", "Sunday", "Jump"]
  
  Answers:
  1. a.sort
  2. a.sort { |s| s }
  3. a.sort { |l, r| l <=> r }
  4. a.sort { |l, r| l.length <=>  r.length }
  5. a.sort_by { |s| s }
  6. a.sort_by { |s| s.length }

=end

# 4 and 6 are the correct answers, because answer 4: the block implements a comparison between left and right, returning -1, 0, or +1 and answer 6: it sorts array value through the given block. Reference links: http://www.ruby-doc.org/core/classes/Array.html#M000244 and http://www.ruby-doc.org/core/classes/Enumerable.html#M001481 
