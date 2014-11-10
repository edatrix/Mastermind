# display result of guess
# respond with correct number of colors
# respond with correct number of positions
# prompt user to guess again

class Printer

  def intro
    "Welcome to MASTERMIND"
  end

  def command_request
    "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
  end

  def ending
    "Congratulations! You guessed the sequence '#{@correct_guess.join} in #{guesses.count} guesses over #{time} minutes,
22 seconds.\nDo you want to (p)lay again or (q)uit?"
  end

  def play_instructions
    "I have generated a beginner sequence with four elements made up of: (r)ed,
(g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game.\n
What's your guess?"
  end

  def game_instructions
    "I have generated a random sequence with four elements made up of: (r)ed,(g)reen, (b)lue, and (y)ellow.\n
    The random sequence can contain any number of Element colors.\n
    For example, yyyy could be a winning guess.\n
    Guess any combination of letters (r,g,b,y) and I will tell you how many color elements you guessed correctly.\n
    I will also tell you how many positions are correct.\n
    Use (q)uit at any time to end the game.\n
    Would you like to (p)lay or (q)uit?"
  end

  def wrong_guess
    "#{@command} has #{correct_elements.count} of the correct elements with #{correct_positions.count} in the correct positions.\n
You've taken #{guesses.count} guess.\n What's your next guess?"
  end

  def game_quit
    "Thanks for playing Chris Luhring\'s Mastermind.  Have a nice day :)"
  end

end
