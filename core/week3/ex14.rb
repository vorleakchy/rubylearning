=begin

  Exercise14 The next set of exercises are sample questions from the Important Ruby Association Certified Ruby Programmer examination. Thanks to Satoshi Asakawa for the Japanese to English translation.

  Select all answers which return true.
  h = { "Ruby" => "Matz", "Perl" => "Larry", "Python" => "Guido" }
  Answers:
  1. h.member?("Matz")
  2. h.member?("Python")
  3. h.include?("Guido")
  4. h.include?("Ruby")
  5. h.has_value?("Larry")
  6. h.exists?("Perl")

=end

# 2, 4, 5 return true. These methods member?, include?, has_key? are the same, one of them is alias another, which uses to check the existence of a key. Also has_value? method checks the existence of a value But exists? method doesn't exist in Hash.
