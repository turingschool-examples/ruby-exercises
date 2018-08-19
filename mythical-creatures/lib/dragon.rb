## dragon.rb

class Dragon
  attr_reader :name,
              :rider,
              :color,
              :hungry,
              :eaten_num

  def initialize(name, color, rider)
    @name   = name
    @color  = color
    @rider  = rider
    @hungry = true
    @eaten_num = 0
  end

  def hungry?
    if @eaten_num >= 3
      @hungry = false
    else @hungry = true
    end
  end

  def eat
    @eaten_num += 1
  end

end
