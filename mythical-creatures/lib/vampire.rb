class Vampire
  attr_reader :name, :pet

  def initialize(name, pet = 'bat')
    @name = name
    @pet = pet
    @is_thirsty = true
  end

  def thirsty?
    @is_thirsty
  end

  def drink
    @is_thirsty = true
  end
end
