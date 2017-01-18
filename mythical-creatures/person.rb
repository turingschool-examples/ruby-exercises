class Person
  attr_reader :name
  attr_accessor :count
  def initialize(name)
    @name = name
    @count = 0
  end

  def stoned?
    count > 0
  end
end
