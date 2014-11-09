# define sequence [colors]
# track number of guesses taken
# randomly pick a winning combination of colors/positions []

class GuessChecker
  def initialize
    @valid_guess = 0
  end


  def Correct?
    @user_input = @correct_color_sequence
    puts "Congratulations! You guessed the sequence #{@correct_guess} in {#{@valid_guess}} guesses over #{time(minutes,seconds)}. /n Do you want to (p)lay again or (q)uit?"
  end

  def Incorrect?
    !Correct?
  end

  def Count_Guesses
    @valid_guess.count
  end

end
