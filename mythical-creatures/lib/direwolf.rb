class Direwolf
  attr_reader  :name,
                    :home,
                    :size,
                    :starks_to_protect,
                    :hunts

  def initialize(name, home = 'Beyond the Wall', size = 'Massive')
    @name = name
    @home = home
    @size = size
    @starks_to_protect = []
    @hunts = true
  end

  def protects(stark)
    if protect_params(stark)
      @starks_to_protect << stark
      @hunts = false
      stark.safe = true
      stark.house_words = 'The North Remembers'
    end

    def hunts_white_walkers?
      @hunts
    end

    def leaves(stark)
      @starks_to_protect.delete(stark)
      stark.safe = false
    end
  end

  def protect_params(stark)
    @starks_to_protect.length < 2 && @home == stark.location
  end
end

class Stark
  attr_reader  :name,
                    :location
attr_accessor :safe,
                    :house_words

  def initialize(name, location = 'Winterfell', house_words = 'Winter is Coming')
    @name = name
    @location = location
    @house_words = house_words
    @safe = false
  end

  def safe?
    @safe
  end
end
