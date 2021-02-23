class Ferret
  attr_reader :name

  def initialize(name = nil)
    @name = name
  end

  def give_name(assigned_name)
    @name = assigned_name
  end
end
