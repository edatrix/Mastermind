class Printer

  def intro
    "Welcome to MASTERMIND!"
  end

  def command_request
    "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
  end

  def too_short
    "Your guess was too short, don't worry, this shouldn't count as actual guess.\nPlease guess again."
  end

  def too_long
    "Your guess was too long, don't worry, this shouldn't count as actual guess.\nPlease guess again."
  end

  def ending(game_length)
    "Congratulations! You guessed the secret sequence '#{@secret_sequence} in #{guesses.count} guesses over #{game_length} minutes,
    22 seconds.\nDo you want to (p)lay again or (q)uit?"
  end

  def play_instructions
    "I have generated a beginner sequence with four elements made up of: (r)ed,
    (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game.\n
    What's your guess?"
  end

  def game_instructions
    "\tI have generated a random sequence of four elements made up of: (r)ed, (g)reen, (b)lue, and (y)ellow. The random sequence can contain any number of element colors. For example, yyyy could be a winning guess.  Guess any combination of letters (rgby) and I will tell you how many color elements you guessed correctly.  I will also tell you how many positions you've guessed correctly.  Use (q)uit at any time to end the game."
  end

  def wrong_guess(command, correct_colors, correct_positions, turns)
    "#{command} has #{correct_colors} of the correct elements with #{correct_positions} in the correct positions.\n
    You've taken #{turns} guess.\n What's your next guess?"
  end

  def game_quit
    "Thanks for playing Chris Luhring\'s Mastermind.  Have a nice day :)"
  end

  def not_a_valid_command
    "I'm sorry, I didn't recognize your command.\n"
  end

end
