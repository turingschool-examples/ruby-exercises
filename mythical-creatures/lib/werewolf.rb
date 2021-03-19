class Werewolf
  attr_reader  :name,
                    :location,
                    :human,
                    :change,
                    :hungry,
                    :wolf,
                    :eaten

  def initialize(name, location = "London")
    @name = name
    @location = location
    @human = true
    # @change = 0 # we don't need this change counter anymore
    # @wolf = false
    # we'll have `wolf` just read the opposite of `human`
    @hungry = false
    @eaten = []
  end

  def human?
    # @human
    human # you don't need the `@` sign when reading instance variables
  end

  def change!
    # lets set the value of `human` to the opposite of `human`:
    @human = !human
    # and make it hungry after changing!
    @hungry = true
    
    # @change += 1
    #   if @change.odd? == true
    #    @human = false
    #  elsif @change.odd? == false
    #    @human = true
    # end
  end

  def wolf?
    # reading the opposite of human:
    !human
    # if @human == false
    #   @wolf = true
    #   @hungry = true
    # end
  end

  def consumed(victim)
    if @human == false
      @eaten << victim
      @hungry = false
      victim.status = :dead
    end
  end
end
