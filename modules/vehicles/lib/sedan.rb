class Sedan
  attr_reader :year,
              :color,
              :odometer

  def initialize(year, color)
    @year = year
    @color = color
    @odometer = 0
  end

  def num_wheels
    4
  end

  def drive(miles)
    @odometer += miles
    puts "Driving #{miles} miles."
  end

end
