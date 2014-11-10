# track number of guesses taken
# What's your guess?"

class GuessChecker
  def initialize(user_input, secret_sequence)
    @user_input = user_input                   # => "bbyy"
    @secret_sequence = secret_sequence         # => "bbyy"
  end

  def correct?
    @user_input == @secret_sequence  # => true
  end

  def incorrect?
    !correct?     # => false
  end

  def count_guesses
    @valid_guess.count
  end

  # Colors?  # ~> NoMethodError: undefined method `Colors?' for GuessChecker:Class

  # Places?

end

guess1 = GuessChecker.new("bbyy", "bbyy")  # => #<GuessChecker:0x007fca999336c0 @user_input="bbyy", @secret_sequence="bbyy">
guess1.incorrect?                          # => false
