class Boat
  attr_reader :name,
              :fuel,
              :odometer

  def initialize(name)
    @name = name
    @odometer = 0
    @fuel = 0
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
