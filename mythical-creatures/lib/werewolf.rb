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
    @change = 0
    @wolf = false
    @hungry = false
    @eaten = []
  end

  def human?
    @human
  end

  def change!
    @change += 1
      if @change.odd? == true
       @human = false
     elsif @change.odd? == false
       @human = true
    end
  end

  def wolf?
    if @human == false
      @wolf = true
      @hungry = true
    end
  end

  def consumed(victim)
    if @human == false
      @eaten << victim
      @hungry = false
      victim.status = :dead
    end
  end
end
