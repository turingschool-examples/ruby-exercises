class Beers
  attr_accessor :inventory
  def initialize(inventory = 99)
    @inventory = inventory
  end
  # def inventory
    # @inventory
  # end
  def take_one_down_and_pass_it_around
    self.inventory -= 1
  end
  def restock
    restock_number = 99 - (inventory)
    self.inventory += restock_number
  end
end
