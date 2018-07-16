class Cat
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def cute?
    true
  end

  def speak
    "Meow, my name is #{@name}"
  end

  def play
    "Playing with string"
  end

end
