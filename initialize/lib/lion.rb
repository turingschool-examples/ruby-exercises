class Lion
  attr_reader :name, :sound

  def initialize(attributes)
    @name = attributes[:name]
    @sound = attributes[:sound]
  end
end
