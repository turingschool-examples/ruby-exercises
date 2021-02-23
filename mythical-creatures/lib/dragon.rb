class Dragon
  attr_reader :name, :rider, :color

  def initialize(name, color, rider)
    @name = name
    @rider = rider
    @color = color
    @is_hungry = true
    @eat_count = 0
  end

  def hungry?
    @is_hungry
  end

  def eat
    @eat_count += 1
    if @eat_count == 3
      @is_hungry = false
    end 
  end
end
