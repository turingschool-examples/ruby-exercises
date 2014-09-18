class Clearance
  def initialize
    @clearance = []
  end

  def best_deal

  end

  def << item
    @clearance << item
  end
end

class Item
  attr_accessor :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end

end
