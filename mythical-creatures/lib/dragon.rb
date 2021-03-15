class Dragon
  attr_reader :name,
                   :color,
                   :rider,
                   :hungry,
                   :eat

  def initialize(name, color = gold, rider)
    @name = name
    @color = color
    @rider = rider
    @hungry = true
    @eat = 0
  end

  def hungry?
    return false if @eat >= 3
    @hungry
  end

  def eat
    @eat += 1
  end
end
