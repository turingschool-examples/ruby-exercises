class Bag
  attr_reader :candies

  def initialize
    @candies = []
  end

  def empty?
    true
  end

  def count
    0
  end

  def << candy
    @candies << candy
  end

end
