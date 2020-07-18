class Baby
  attr_accessor :tired
  def initialize(tired = true)
    @tired = tired
  end
  def tired?
    tired
  end
  def nap
    self.tired = false
  end
end
