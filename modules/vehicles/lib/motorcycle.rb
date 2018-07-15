class MotorCycle
  attr_reader :year,
              :color,
              :odometer,
              :fuel

  def initialize(year, color)
    @year = year
    @color = color
    @odometer = 0
    @fuel = 0
  end

  def num_wheels
    2
  end

  def paint(new_color)
    @color = new_color
  end

  def refuel(amount)
    @fuel += amount
  end

  def drive(miles)
    if @fuel >= miles
      @odometer += miles
      @fuel -= miles
      return "Driving #{miles} miles"
    else
      return "Not enough fuel"
    end
  end
end
