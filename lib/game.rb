require_relative 'code_generator'
require_relative 'printer'

class Game

  def initialize(instream, outstream, printer)
    @guess           = []
    @turns           = 1
    # @secret_sequence = CodeGenerator.something
    @printer         = printer
    @command         = ""
    @instream        = instream
    @outstream       = outstream
    @start_time      = Time.now
    @end_time        = Time.now
  end

  def play
    @start_time
    @command = @instream.gets.strip
    @guess = @command.split(//)
    until correct? || exit?
      process_game_turn
      self.play
    end
  end

  def add_turn
    @turns += 1
  end

  def correct_colors
    @correct_colors
  end

  def correct_positions
    @correct_positions
  end

  def too_short?
    @command.length < 4
  end

  def too_long?
    @command.length > 4
  end

  def correct?
    @guess == @secret_sequence
  end

  def incorrect?
    !correct?
  end

  def exit?
    @command == "q" || @command == "quit"
  end

  def instructions?
    @command == "i" || @command == "instructions"
  end

  def game_length
    @end_time - @start_time.round
  end

  def process_game_turn
    case
    when exit?
      @outstream.puts @printer.game_quit
    when instructions?
      @outstream.puts @printer.game_instructions
    when too_short?
      @outstream.puts @printer.too_short
    when too_long?
      @outstream.puts @printer.too_long
    when correct?
      @outstream.puts @printer.ending(@guess, game_length)
      end_time
    when incorrect?
      @outstream.puts @printer.wrong_guess(@command, correct_colors, correct_positions, @turns)
      add_turn
    end
  end
end
