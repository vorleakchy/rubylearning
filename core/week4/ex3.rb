=begin

  Exercise3. Call this program (p026zdeafgm2.rb) - Modify your Deaf Grandma program (Week 3 / Exercise6): What if grandma doesn"t want you to leave? When you shout BYE, she could pretend not to hear you. Change your previous program so that you have to shout BYE three times in a row. Make sure to test your program: if you shout BYE three times, but not in a row, you should still be talking to grandma. You must shout BYE three separate times. If you shout BYEBYEBYE or BYE BYE BYE, grandma should pretend not to hear you (and not count it as a BYE).

=end

class Grandma
  def initialize(exit_bye_count = 3, bye_word = "BYE")
    @bye_count = 0
    @exit_bye_count = exit_bye_count
    @bye_word = bye_word
  end

  def start_chat
    until leave_chat?(input = input_message)
      puts reply_message(input)
    end
  end
  
  def reply_message(input)
    message = "Grandma responds: "
    message += input == input.upcase ? "NO, NOT SINCE #{Random.new.rand(1930..1950)}!" : "HUH?! SPEAK UP, SONNY!"
  end

  private

  def input_message
    print "You enter: "
    gets.chomp
  end
  
  def leave_chat?(input)
    input == @bye_word ? increase_bye_count : reset_bye_count
    reach_bye_count_limited?
  end
  
  def reach_bye_count_limited?
    @bye_count == @exit_bye_count
  end
  
  def increase_bye_count
    @bye_count += 1
  end
  
  def reset_bye_count
    @bye_count = 0
  end
end

# Run program
Grandma.new.start_chat
