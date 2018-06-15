class Face
  attr_reader :food_log
  def initialize
    @food_log = {}
  end

  def <<(food)
    @food_log[time] = food
  end

  def foods_eaten
    @food_log.values
  end

  private

  def time
    "#{@food_log.size} o'clock"
  end
end
