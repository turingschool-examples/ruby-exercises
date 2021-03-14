class Vampire
  attr_reader :name,
                   :pet,
                   :drink

  def initialize(name, pet = "bat")
    @name = name
    @pet = pet
    @drink = 0
  end

  def thirsty?
    return false if @drink >= 1
    else
    true
  end

  def drink
    @drink += 1
  end
end
