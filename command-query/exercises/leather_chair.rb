class LeatherChair
  attr_accessor :faded
  def initialize(faded = false)
    @faded = faded
  end
  def faded?
    faded
  end
  def expose_to_sunlight
    self.faded = true
  end
end
