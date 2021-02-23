class Vampire
  attr_reader :name, :pet 

  def initialize(name, pet = 'bat')
    @name = name
    @pet = pet
  end
end
