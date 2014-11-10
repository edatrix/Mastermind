# randomly pick a winning combination of colors/positions []
# define sequence [colors]

class CodeGenerator
  def initialize(sequence)
    @secret_sequence = []
    4.times {@secret_sequence << ["r", "g", "b", "y"].sample}
    # @secret_sequence.join
  end
end
