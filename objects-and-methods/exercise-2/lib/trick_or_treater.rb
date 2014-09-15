class TrickOrTreater
  def initialize(costume)
    @costume = costume
    @bag = Bag.new
    @sugar_level = 0
  end

  def dressed_up_as
    @costume.style
  end

  def bag
    @bag
  end

  def has_candy?
    !bag.empty?
  end

  def candy_count
    bag.count
  end

  def eat
    @sugar_level += bag.candies.pop.sugar
  end

  def sugar_level
    @sugar_level
  end

end