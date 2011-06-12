=begin

  You want a challenge? With Blocks (Closures)?

  How about this one:

  Code a FizzBuzz program - in Ruby, of course - that outputs the numbers from 1 to 100. But...:

  - if the number is dividable by 3 then output *Fizz*
  - if the number is dividable by 5 then output *Buzz*
  - if the number is dividable by 3 and 5 then output *FizzBuzz*

  This is a sample of the expected output:
    1
    2
    Fizz
    4
    Buzz
    Fizz
    7
    8
    Fizz
    Buzz
    11
    Fizz
    13
    14
    FizzBuzz
    ...
    89
    FizzBuzz
    91
    92
    Fizz
    94
    Buzz
    Fizz
    97
    98
    Fizz
    Buzz


  Now, extend the code to handle other "pairs". For example:

  - if divided by 7 then output *Dazz* 
  - if dividable by 3 and 7 then output *FizzDazz*
  - if dividable by 3 and 5 and 7 then output *FizzBuzzDazz*
  - If divisible by 11, then output *Kezz*

  And extend it so it can take care of more "pairs". The idea here is to pass a block to a method
  that then evaluates the divisibility of the number given a divider and it's matching string. ;)
  Game?

  Of course, it doesn't have to be a block, it can be done other ways... looking forward to some good solutions

=end

PAIR_WORDS = {
  3 => "Fizz",
  5 => "Buzz",
  7 => "Dazz",
  11 => "Kezz"
}

1.upto(1000) do |number|
  text = ""
  PAIR_WORDS.each do |value, word|
    text += word if number % value == 0
  end
  puts text.empty? ? number : text
end
