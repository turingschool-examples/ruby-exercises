class Truck
  attr_reader :year,
              :color,
              :odometer,
              :cargo

  def initialize(year, color, cargo = [])
    @year = year
    @color = color
    @odometer = 0
    @cargo = cargo
  end

  def paint(new_color)
    @color = new_color
  end

  def drive(miles)
    @odometer += miles
    puts "Driving #{miles} miles."
  end

  def load_cargo(cargo)
    @cargo << cargo
  end

  def num_wheels
    4
  end
end
