# track number of guesses taken
# What's your guess?"

class GuessChecker
  def initialize(user_input, secret_sequence)
    @user_input = user_input                   # => "bbyr"
    @secret_sequence = secret_sequence         # => "bbyy"
  end

  def correct?
    @user_input == @secret_sequence
  end

  def incorrect?
    !correct?
  end

  def count_guesses
    @valid_guess.count
  end

  def correct_positions
    strand1 = @user_input.split(//)
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
    strand1 = @user_input.split(//)       # => ["r", "b", "y", "r"]
    strand2 = @secret_sequence.split(//)  # => ["b", "b", "y", "y"]
    tc1 = 4 - (strand1 - strand2).count   # => 3
  end

    # correct_colors = 4 - {@secret_sequence reject |@user_input|)

  # Places?

end

guess1 = GuessChecker.new("rbyr", "bbyy")  # => #<GuessChecker:0x007fa310a04cf8 @user_input="bbyr", @secret_sequence="bbyy">
guess1.correct_colors

# ~> NoMethodError
# ~> undefined method `-' for "b":String
# ~>
# ~> /Users/cluhring/Desktop/Chris'_Code/Mastermind/lib/guess_checker.rb:48:in `correct_colors'
# ~> /Users/cluhring/Desktop/Chris'_Code/Mastermind/lib/guess_checker.rb:60:in `<main>'
