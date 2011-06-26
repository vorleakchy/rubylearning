=begin

  Exercise3: Here are the program specifications for a simple game to be played against the computer.

  a. This game is played at the command-line.
  b. The game starts when the computer selects three consecutive cells in a 7 cell row (from 0 to 6). When that's complete, the game asks for your first guess.
  c. Guess the computer's selected cells in the smallest number of guesses. You are given a rating or level, based on how well you perform.
  d. At the command line, the user types in a number from 0 to 6. The computer checks if it's one of the selected cells. If it's a hit, increment the no_of_hits variable. In response to your guess, you'll see a result at the command-line: either "Hit", "Miss" or "End".
  e. When you have guessed all three cells, the game ends by printing out your rating (your number of guesses).

  Note:
  a. Use only the features we have learned so far, in Ruby.
  b. You must design the GameBoard class.
  c. The testgameboard.rb program uses your GameBoard class
  
=end

class GameBoard
  def set_locations_cells(cells)
    @location_cells = cells
    @no_of_hits = @no_of_miss = 0
  end
  
  def check_yourself(user_guess)
    @user_guess = user_guess.to_i

    puts guess_in_location_cells? ? hit_guess_number : miss_guess_number
    
    if hit_all_location_cells?
      puts "Miss guess: #{@no_of_miss} and hit guess: #{@no_of_hits} of #{total_guesses} guesses."
      puts "End"
      return "kill"
    else  
      
    end
  end
  
  private
  
  def guess_in_location_cells?
    @location_cells.include? @user_guess
  end
  
  def hit_guess_number
    @no_of_hits += 1
    @location_cells.delete @user_guess
    "Hit"
  end
  
  def miss_guess_number
    @no_of_miss += 1
    "Miss"
  end
  
  def hit_all_location_cells?
    @location_cells.empty?
  end
  
  def total_guesses
    @no_of_hits + @no_of_miss
  end
end
