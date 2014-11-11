# timer function to be displayed after guessing correct sequence

class Timer
  attr_reader     # => nil
  def initialize
    @time = 0
  end

  def total_time
    @end_time - @start_time.round
  end

  def start_time
    Time.now
  end

  def end_time
    correct_guess
    Time.now
  end
end
