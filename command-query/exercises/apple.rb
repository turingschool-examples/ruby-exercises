class Apple

  def initialize
    @ripe = false
    @age = 0
  end

  def wait_a_week
    @age += 1
    @ripe = true if @age >= 3
  end

  def ripe?
    @ripe
  end

end
