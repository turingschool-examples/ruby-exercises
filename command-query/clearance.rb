class Clearance
  def initialize
    @clearance = []
  end

  def best_deal
    if @clearance.count < 1
      nil
    else
      item = @clearance.each do |item|
        item.price <
      item.name
    end
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
