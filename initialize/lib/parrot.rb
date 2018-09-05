class Parrot
  attr_reader :name, :known_words
  
  def initialize(attributes)
    @name = attributes[:name]
    @known_words = attributes[:known_words]
  end

end
