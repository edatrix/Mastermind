
class CodeGenerator

  def initialize
    @secret_sequence = []
    4.times {@secret_sequence << ["r", "g", "b", "y"].sample}
  end

end