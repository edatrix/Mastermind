class Game
  attr_reader :guess,
              :turns,
              :secret_sequence,
              :printer,
              :command,
              :instream,
              :outstream

  def initialize(instream, outstream, printer)
    @guess           = 1
    # @turns           = 1
    @secret_sequence = Random.rand(0..1000)
    @printer         = printer
    @command         = ""
    @instream        = instream
    @outstream       = outstream
    @start_time      = Time.now
    @end_time        = Time.now
  end

  def play
    @start_time
    outstream.puts printer.play_instructions
    until win? || exit?
      outstream.puts printer.wrong_guess
      # outstream.puts printer.game_command_request
      @command = instream.gets.strip.downcase
      # @guess   = command.to_i
      process_game_turn
    end
  end

  private

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
      @end_time
      outstream.puts printer.ending(@secret_sequence, game_length)
    when incorrect?
      outstream.puts printer.wrong_guess(command, correct_colors, correct_positions, turns)
      add_guess
  end

  def add_guess
    @guess += 1
  end

  def too_short?
    @instream.length < 4
  end

  def too_long?
    @instream.length > 4

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
    @end_time - @start_time.round
  end

end
