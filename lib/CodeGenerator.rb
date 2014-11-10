# randomly pick a winning combination of colors/positions []
# define sequence [colors]

class CodeGenerator
  attr_reader :secret_sequence                                 # => nil
  def initialize
    @secret_sequence = []                                      # => []
    4.times {@secret_sequence << ["r", "g", "b", "y"].sample}  # => 4
    # puts @secret_sequence.join                                 # => nil
  end
end


code = CodeGenerator.new  # => #<CodeGenerator:0x007fd7a8984428 @secret_sequence=["b", "y", "g", "b"]>
code.secret_sequence      # => ["b", "y", "g", "b"]

# >> bygb
