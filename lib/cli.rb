# get user input
# run a game loop
# enter the game/play again (p)
# instructions function (i)
# guess again
# get user input
# exit/quit game (q)

require 'game'
require 'printer'

class CLI
  attr_reader :command, :messages, :instream, :outstream

  def initialize(instream, outstream)
    @command = ""
    @messages = Printer.new
    @instream = instream
    @outstream = outstream
  end

  def call
    outstream.puts printer.intro
    until finished?
      outstream.puts printer.command_request
      @command = instream.gets.strip
      process_initial_commands
    end
    outstream.puts Printer.ending
  end

  private

  def process_initial_commands
    case
    when play?
      outstream.puts Printer.play_instructions
      game = Game.new(instream, outstream, messages)
      game.play
    when instructions?
      outstream.puts Printer.game_instructions
    when finished?
      outstream.puts Printer.game_quit
    # else
    #   outstream.puts messages.not_a_valid_command
    end
  end

  def play?
    command == "p" || command == "play"
  end

  def instructions?
    command == "i" || command == "instructions"
  end

  def finished?
    command == "q" || command == "quit"
    exit
  end
end
