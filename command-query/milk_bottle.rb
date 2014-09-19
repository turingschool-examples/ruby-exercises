class MilkBottle
  def initialize
    @full = true
  end

  def spill
    @full = false
  end

  def full?
    @full
  end
end
