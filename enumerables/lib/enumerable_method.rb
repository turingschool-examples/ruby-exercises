class EnumerableMethod
  attr_reader :selector

  def initialize(selector)
    @selector = selector
  end

  def name
    selector.to_s.chomp('?')
  end

  def class_name
    name.split("_").map(&:capitalize).join('')
  end
end

