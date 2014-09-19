class Candy
  attr_reader :type

  def initialize(type, sugar = 100)
    @type = type
    @sugar = sugar
  end

  def sugar
    @sugar
  end
end
