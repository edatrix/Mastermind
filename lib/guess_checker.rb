# track number of guesses taken
# What's your guess?"

class GuessChecker
  def initialize(user_input, secret_sequence)
    # @user_input = user_input.split(//)            # => ["o", "b", "y", "r"]
    # @secret_sequence = secret_sequence.split(//)  # => ["y", "b", "y", "y"]
  end
  #
  # def correct?
  #   @user_input == @secret_sequence
  # end
  #
  # def incorrect?
  #   !correct?
  # end

  # def correct_positions
  #   strand1 = @user_input.split(//)
  #   strand2 = @secret_sequence.split(//)
  #   tc1 = strand1[0] <=> strand2[0]
  #   tc2 = strand1[1] <=> strand2[1]
  #   tc3 = strand1[2] <=> strand2[2]
  #   tc4 = strand1[3] <=> strand2[3]
  #   total_correct = tc1 + tc2 + tc3 + tc4
  #
  #   if total_correct == 0
  #     puts 4
  #   elsif total_correct == -1
  #     puts 3
  #   elsif total_correct == -2
  #     puts 2
  #   elsif total_correct == -3
  #     puts 1
  #   else total_correct == -4
  #     puts 0
  #   end
  # end

def correct_colors
    color1 = @user_input.pop
    color2 = @user_input.pop
    color3 = @user_input.pop
    color4 = @user_input.pop

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

# guess1 = GuessChecker.new("obyr", "ybyy")  # => #<GuessChecker:0x007f7f791872c0 @user_input=["o", "b", "y", "r"], @secret_sequence=["y", "b", "y", "y"]>
# guess1.correct_colors                      # => 2
