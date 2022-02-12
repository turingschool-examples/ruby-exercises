class Unicorn

  attr_reader   :name, :color

  def initialize(name_param, color_param='silver')
    @name     = name_param
    @color    = color_param
  end

  def silver?
    @color == 'silver'
  end

  def say(string_param)
    '**;* ' + string_param + ' **;*'
  end

end
