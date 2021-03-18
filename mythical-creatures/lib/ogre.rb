class Ogre
  attr_reader  :name
  attr_accessor :home,
                      :swings,
                      :encounter_counter

  def initialize(name, home = "Swamp")
    @name = name
    @home = home
    @swings = 0
    @encounter_counter = 0
  end

  def encounter(human)
    @encounter_counter += 1
    human.encounter_counter += 1
    swing_at_human(human)
  end

  def swing_at_human(human)
    swing_at(human) if human.encounter_counter % 3 == 0
  end

  def swing_at(human)
    @swings += 1
  end

  def apologize(human)
    human.encounter_counter = 0
    @swings = 0
  end
end

class Human
  attr_reader  :name
  attr_accessor :encounter_counter,
                      :notice_ogre,
                      :knock_out

  def initialize
    @name = "Jane"
    @encounter_counter = 0
    @notice_ogre = false
    @knock_out = false
  end

  def notices_ogre?
    @notice_ogre = true if @encounter_counter % 3 == 0
    @notice_ogre
  end

  def knocked_out?
    if @encounter_counter == 0
      @knock_out = false
    elsif @encounter_counter % 6 == 0
      @knock_out = true
    end
  end
end
