class Guess1

  def initialize(instream, secret_sequence)
    @guess = instream.split(//)            # => ["o", "b", "y", "r"]
    @secret_sequence = secret_sequence.split(//)  # => ["y", "b", "y", "y"]
  end

  def correct_positions
    tc1 = @guess[0] <=> @secret_sequence[0]
    tc2 = @guess[1] <=> @secret_sequence[1]
    tc3 = @guess[2] <=> @secret_sequence[2]
    tc4 = @guess[3] <=> @secret_sequence[3]
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

end