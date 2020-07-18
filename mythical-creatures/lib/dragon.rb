
class Dragon
  attr_reader :name, :color, :rider, :count, :hungry
  def initialize(name, color, rider)
    @name = name
    @color = color
    @rider = rider
    @hungry = true
    @count = 0
  end

  def name
    # require 'pry'; binding.pry
    @name
  end

  def hungry?
    hungry
  end

  def eat
    @count += 1

    if @count == 3
      @hungry = false
    end
  end

end
