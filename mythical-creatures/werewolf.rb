class Werewolf
  attr_reader :name
  def initialize(name, location = 'London')
    @name = name
    @location = location
    @human = true
  end

  attr_reader :location

  def human?
    @human
  end

  def change!
    if @human
      @human = false
    else
      @human = true
    end
  end

  def werewolf?
    !@human
  end
end
