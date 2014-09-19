class Appointments
  attr_accessor :slots

  def initialize
    @slots = []
  end

  def earliest
    if @slots.empty?
      nil
    else
      @slots.sort.reverse.pop
    end
  end

  def at(time)
    @slots << time
  end
end
