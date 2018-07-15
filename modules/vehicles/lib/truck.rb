class Truck
  attr_reader :year,
              :color,
              :odometer,
              :cargo,
              :fuel

  def initialize(year, color, cargo = [])
    @year = year
    @color = color
    @odometer = 0
    @fuel = 0
    @cargo = cargo
  end

  def num_wheels
    4
  end

  def load_cargo(cargo)
    @cargo << cargo
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
