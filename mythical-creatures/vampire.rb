class Vampire
attr_reader :name, :pet, :counter
  def initialize(name, pet = "bat")
    @name = name
    @pet = pet
    @counter = 0
  end

  def thirsty?
    counter < 1
  end

  def drink
    @counter += 1
  end
end
