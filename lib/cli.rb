# get user input
# define valid vs invalidate guesses (four undercase letters)
# check to see if @user_input has invalid characeters[]


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
    outstream.puts messages.intro
    until finished?
      outstream.puts messages.command_request
      @command = instream.gets.chomp.strip
      process_initial_commands
    end
    outstream.puts messages.ending
  end

  private

  def process_initial_commands
    case
    when play?
      game = Game.new(instream, outstream, messages)
      game.play
    when instructions?
      outstream.puts messages.game_instructions
    when finished?
      outstream.puts messages.game_quit
    else
      outstream.puts messages.not_a_valid_command
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
  end
end
