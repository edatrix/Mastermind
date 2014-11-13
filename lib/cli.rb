require_relative 'game'

class CLI

  def initialize(instream, outstream)
    @command = ""
    @printer = Printer.new
    @instream = instream
    @outstream = outstream
  end

  def call
    @outstream.puts @printer.intro
    until finished?
      @outstream.puts @printer.command_request
      @command = @instream.gets.strip
      process_initial_commands
    end
  end

  private

  def process_initial_commands
    case
    when play?
      @outstream.puts @printer.play_instructions
      game = Game.new(@instream, @outstream, @printer)
      game.play
    when instructions?
      @outstream.puts @printer.game_instructions
    when finished?
      @outstream.puts @printer.game_quit
    else
      @outstream.puts @printer.not_a_valid_command
    end
  end

  def play?
    @command == "p" || @command == "play"
  end

  def instructions?
    @command == "i" || @command == "instructions"
  end

  def finished?
    @command == "q" || @command == "quit"
  end
end