class Centaur
  attr_reader :name, :breed, :actions, :standing

  def initialize(name, breed)
    @name = name
    @breed = breed
    @standing = true
    @actions = 0
  end

  def shoot
    perform_action('Twang!!!')
  end

  def run
    perform_action('Clop clop clop clop!!!')
  end

  def perform_action(message)
    if cranky? || laying?
      'NO!'
    else
      @actions += 1
      message
    end
  end

  def cranky?
    actions > 2
  end

  def standing?
    standing
  end

  def sleep
    return 'NO!' if standing?
    @actions = 0
  end

  def lay_down
    @standing = false
  end

  def laying?
    !@standing
  end

  def stand_up
    @standing = true
  end

end