# track number of guesses taken
# What's your guess?"

class GuessChecker
  def initialize(user_input, secret_sequence)
    @user_input = user_input                   # => "bbbb"
    @secret_sequence = secret_sequence         # => "ybyy"
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
    strand1 = @user_input.split(//)        # => ["b", "b", "b", "b"]
    strand2 = @secret_sequence.split(//)   # => ["y", "b", "y", "y"]
    color1 = strand1.pop                   # => "b"
    strand2.delete(color1)                 # => "b"
    color2 = strand1.pop                   # => "b"
    strand2.delete(color2)                 # => nil
    color3 = strand1.pop                   # => "b"
    strand2.delete(color3)                 # => nil
    color4 = strand1.pop                   # => "b"
    strand2.delete(color4)                 # => nil
    incorrect_colors = strand2.count       # => 3
    correct_colors = 4 - incorrect_colors  # => 1
  end

end

guess1 = GuessChecker.new("bbbb", "ybyy")  # => #<GuessChecker:0x007fb5b9907b00 @user_input="bbbb", @secret_sequence="ybyy">
guess1.correct_colors                      # => 1
