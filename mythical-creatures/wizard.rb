class Wizard
  attr_reader :name, :bearded, :count
  def initialize(name, bearded: true)
    @name = name
    @bearded = bearded
    @count = 0
  end

  def bearded?
    bearded
  end

  def incantation(phrase)
    "sudo #{phrase}"
  end

  def rested?
    count < 3
  end

  def cast
    "MAGIC MISSILE!"
  end

  def cast_spell
    @count += 1
  end
end
