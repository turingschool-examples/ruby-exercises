class Dog
  attr_reader :name, :tricks

  def initialize(name)
    @name = name
    @tricks = []
  end

  def cute?
    true
  end

  def speak
    "Woof, my name is #{@name}"
  end

  def play
    "Playing with ball"
  end

  def learn_trick(trick)
    @tricks << trick
  end

  def perform_tricks
    "Performing " + @tricks.join(", ") + "."
  end
end
