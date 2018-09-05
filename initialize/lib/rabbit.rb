class Rabbit
  attr_reader :name

  def initialize(name)
    if name[:num_syllables] == 2
      @name = "#{name[:name]} Rabbit"
    else
      @name = name[:name]
    end
  end
end
