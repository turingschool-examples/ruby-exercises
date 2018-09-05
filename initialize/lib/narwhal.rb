class Narwhal
  attr_reader :cute, :name, :weight

  def initialize(attributes)
    @cute = attributes[:cute]
    @name = attributes[:name]
    @weight = attributes[:weight]
  end

  def cute?
    @cute
  end
end
