class Cat
  attr_reader :name

  def initialize(name)
    @name = name
    @sound = "Meow"
    @toy = "string"
  end

  def cute?
    true
  end

  def speak
    "#{@sound}, my name is #{@name}"
  end

  def play
    "Playing with #{@toy}"
  end

end
