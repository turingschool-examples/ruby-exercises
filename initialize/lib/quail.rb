class Quail
  attr_reader :name

  def initialize(name)
    @name = name.capitalize
  end
end
