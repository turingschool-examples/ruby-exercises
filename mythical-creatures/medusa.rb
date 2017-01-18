class Medusa
  attr_accessor :name, :statues
  def initialize(name)
    @name = name
    @statues = []
  end

  def stare(person)
    if statues.count < 3
      statues << person
      person.count += 1
    end
  end
end
