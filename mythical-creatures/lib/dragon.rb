class Dragon
  attr_reader :name, :rider, :color

  def initialize(name, color, rider)
    @name = name
    @rider = rider
    @color = color
    @is_hungry = true
  end

  def hungry?
    @is_hungry
  end
end
