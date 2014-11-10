# timer function to be displayed after guessing correct sequence

class Timer
  attr_reader
  def initialize
    @time = 0
  end

  def total_time
    @end_time - @start_time

  def start_time
    Time.now
  end

  def end_time
    Correct Guess
    .pstrftime
  end


  def time block
  t = Time.now
  result = eval(block)
  puts "\nCompleted in #{(Time.now - t).format} seconds"
  result

end
end
