class Werewolf
  attr_reader :name,:location, :human, :wolf, :count
  alias_method :wolf?, :wolf
  def initialize(name, location = "London")
    @name = name
    @location = location
    @human = true
    @count = 0
  end

  def human?
    human
  end

  def change!
    @count += 1
    @human = false
    @wolf = true
    if count == 2
      @human = true
    end
  end
end
