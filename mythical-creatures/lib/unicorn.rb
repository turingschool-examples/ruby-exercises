class Unicorn
  attr_reader :name, :color
  def initialize(name, color = "white")
    @name = name
    @color = color
  end

  def white?
    return true if color == "white"
    false
  end

  def say(word)
    "**;* #{word} **;*"
  end 
end
