class Vampire
  attr_reader :name,
                   :pet,
                   :drink,
                   :thirsty # adding the attr_reader

  def initialize(name, pet = "bat")
    @name = name
    @pet = pet
    # @drink = 0 # don't need this anymore
    @thirsty = true # set thirsty by default
  end

  def thirsty?
    # read the thirsty instance variable (ivar):
    thirsty
    
    
    # return false if @drink >= 1
    # else
    # true
  end

  def drink
    # and when the vampire drinks, set `thirsty` 
    # to false:
    
    @thirsty = false
    # @drink += 1
  end
end
