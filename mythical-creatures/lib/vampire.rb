require 'pry'
class Vampire
  attr_reader :name, :pet, :thirsty
  def initialize(name, pet = "bat")
    @name = name
    @pet = pet
    @thirsty = true
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
