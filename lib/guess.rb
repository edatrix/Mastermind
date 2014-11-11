class Guess

  def initialize(user_guess)
    @user_guess = user_guess.downcase.split(//)
    @valid_guess = 0          # => 0
  end

  def valid_length?
    @user_guess.length == 4  # => false
  end

  def count_guesses
    valid_guess.count
  end

  # def valid_characters?
  #   @user_guess.
  # end

end


guess = Guess.new("yYyB")  # => #<Guess:0x007fb4698fcdf0 @user_guess="yYyBv", @valid_guess=0>

guess.valid_characters?  # => false

# 4 - (user_guess.sanitize - user_guess.split) = number of correct
