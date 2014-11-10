# run a game loop
# enter the game/play again (p)
# instructions function (i)
# guess again
# get user input
# exit/quit game (q)

class Game
  def initialize(sequence)
    @correct_guess = []
    4.times {@correct_guess << ["r", "g", "b", "y"].sample}
    puts Printer.method to write "I have generated"
    @correct_guess.to_s
  end

  def play
    .shuffle!
  end

  def instructions
  end

  def quit
  end

  def guess
  end
end
