class Guess1
  def initialize(instream, secret_sequence)
    @guess = instream.split(//)            # => ["o", "b", "y", "r"]
    @secret_sequence = secret_sequence.split(//)  # => ["y", "b", "y", "y"]
  end
#ef correct_positions
  # strand1 = @instream.split(//)
  # strand2 = @secret_sequence.split(//)
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
#   def initialize(user_input)
#     @user_input = user_input.split(//)  # => ["y", "Y", "y", "B"]
#     @valid_guess = 0                    # => 0
#   end
#
#   # def valid_length?
#   #   @user_input.length == 4
#   # end
#
#   def count_guesses
#     if user_input ==  # ~> NameError: undefined local variable or method `user_input' for #<Guess:0x007f95bc11b7d8>
#     valid_guess += 1
#   end
# end
#   # def valid_characters?
#   #   @user_input.
#   # end
#
# end
#
#
# guess = Guess.new("yYyB")  # => #<Guess:0x007f95bc11b7d8 @user_input=["y", "Y", "y", "B"], @valid_guess=0>
#
# guess.count_guesses

# 4 - (user_guess.sanitize - user_guess.split) = number of correct

# ~> NameError
# ~> undefined local variable or method `user_input' for #<Guess:0x007f95bc11b7d8>
# ~>
# ~> /Users/cluhring/Desktop/Chris'_Code/Mastermind/lib/guess.rb:13:in `count_guesses'
# ~> /Users/cluhring/Desktop/Chris'_Code/Mastermind/lib/guess.rb:26:in `<main>'
