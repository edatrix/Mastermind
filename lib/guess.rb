# class Guess
#
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
