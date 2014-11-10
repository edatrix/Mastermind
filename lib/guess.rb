class Guess
  
  def initialize(user_guess)
    @user_guess = user_guess
    @valid_guess = 0
  end

  def valid_guess
  user_guess.rejects[^a-z]
  end

end
