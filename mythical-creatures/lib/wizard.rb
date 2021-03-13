class Wizard
  attr_reader :name,
                   :bearded,
                   :rested,
                   :spell_charm

  def initialize(name, bearded: true)
    @name = name
    @bearded = bearded
    @rested = true
    @spell_charm = 0
  end

  def bearded?
    bearded
  end

  def incantation(string)
    "sudo " + string
  end

  def rested?
    return false if @spell_charm >= 3
   @rested
  end

  def cast
    @spell_charm += 1
    "MAGIC MISSILE!"
  end
end
