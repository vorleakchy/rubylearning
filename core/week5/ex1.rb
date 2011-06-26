=begin

  Exercise1. Write a class UnpredictableString which is a sub-class of String. This sub-class should have a method called scramble() which randomly rearranges any string as follows:

  >ruby unpredictablestring.rb
  daano.r n sdt a htIsw taikmgy r
  >Exit code: 0
  # the original string was: "It was a dark and stormy night."

=end

class UnpredictableString < String
  def scramble
    split(//).shuffle!.join
#    split(//).sort_by { rand }.join # Do the same work to above line
  end
end

# Run program
puts UnpredictableString.new("It was a dark and stormy night.").scramble

=begin
  No need to override initialize because String class does for us already.
  No need to use self. with split method because we just call the method in String class.
=end
