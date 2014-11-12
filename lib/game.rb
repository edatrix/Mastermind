require_relative 'CodeGenerator'  # => true

class Game
  attr_reader :guess,            # => :guess
              :turns,            # => :turns
              :secret_sequence,  # => :secret_sequence
              :printer,          # => :printer
              :command,          # => :command
              :instream,         # => :instream
              :outstream,        # => :outstream
              :start_time,       # => :start_time
              :end_time          # => nil

  def initialize(instream, outstream, printer)
    @guess           = []
    @turns           = 1
    @secret_sequence = CodeGenerator.new
    @printer         = printer
    @command         = ""
    @instream        = instream
    @outstream       = outstream
    @start_time      = Time.now
    @end_time        = Time.now
  end

  def play
    start_time
    outstream.puts printer.play_instructions
    until correct? || exit?
      outstream.puts printer.wrong_guess
      # outstream.puts printer.game_command_request
      @command = instream.gets.strip
      @guess   = command.split(//)
      process_game_turn
    end
  end

  private  # => Game

  # def secret_sequence
  #   4.times {@secret_sequence << ["r", "g", "b", "y"].sample}
  #   # puts @secret_sequence.join
  # end

  def process_game_turn
    case
    when exit?
      outstream.puts printer.game_quit
    when instructions?
      outstream.puts printer.game_instructions
    when too_short?
      outstream.puts printer.too_short
    when too_long?
      outstream.puts printer.too_long
    when correct?
      outstream.puts printer.ending(@guess, game_length)
      end_time
    when incorrect?
      outstream.puts printer.wrong_guess(command, correct_colors, correct_positions, turns)
      add_turn
  end

  def add_turn
    @turns += 1
  end

  def too_short?
    instream.length < 4
  end

  def too_long?
    instream.length > 4

  def correct?
    @instream == @secret_sequence
  end

  def incorrect?
    !correct?

  def exit?
    command == "q" || command == "quit"
  end

  def instructions?
    command == "i" || command == "instructions"

  def game_length
    end_time - start_time.round
  end

  def correct_positions
    strand1 = @instream.split(//)
    strand2 = @secret_sequence.split(//)
    tc1 = strand1[0] <=> strand2[0]
    tc2 = strand1[1] <=> strand2[1]
    tc3 = strand1[2] <=> strand2[2]
    tc4 = strand1[3] <=> strand2[3]
    total_correct = tc1 + tc2 + tc3 + tc4

    if total_correct == 0
      puts 4
    elsif total_correct == -1
      puts 3
    elsif total_correct == -2
      puts 2
    elsif total_correct == -3
      puts 1
    else total_correct == -4
      puts 0
    end
  end

  def correct_colors
    color1 = @instream.pop
    color2 = @instream.pop
    color3 = @instream.pop
    color4 = @instream.pop

  if @secret_sequence.include?(color1)
      @secret_sequence.delete_at(@secret_sequence.index(color1))
    end

  if @secret_sequence.include?(color2)
      @secret_sequence.delete_at(@secret_sequence.index(color2))
    end

  if @secret_sequence.include?(color3)
      @secret_sequence.delete_at(@secret_sequence.index(color3))
    end

  if @secret_sequence.include?(color4)
      @secret_sequence.delete_at(@secret_sequence.index(color4))
    end

  correct_colors = 4 - @secret_sequence.count
  end
end
end
end
end
end
