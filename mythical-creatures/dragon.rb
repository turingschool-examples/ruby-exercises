class Dragon

  def initialize(name, color, rider)
    @name = name
    @color = color
    @rider = rider
    @eat_count = 0
  end

  def hungry?
    @eat_count < 3
  end

  def eat
    @eat_count += 1
  end

  def name
    @name
  end

  def rider
    @rider
  end

  def color
    @color
  end
end
