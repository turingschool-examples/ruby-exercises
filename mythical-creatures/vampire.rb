class Vampire
  attr_accessor :name

  def initialize(name, pet = 'bat', thirsty = true)
    @name = name
    @pet = pet
    @thirsty = thirsty
  end

  def pet
    @pet
  end

  def thirsty?
    @thirsty
  end

  def drink
    @thirsty = false
  end
end