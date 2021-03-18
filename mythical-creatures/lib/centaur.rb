class Centaur
  attr_reader  :name,
                    :breed,
                    :cranky,
                    :standing,
                    :activities

    def initialize(name, breed)
      @name = name
      @breed = breed
      @activities = 0
      @cranky = false
      @standing = true
    end

    def shoot
      @activities += 1
      if @activities >= 3 || laying? == true
        "NO!"
      else
        "Twang!!!"
      end
    end

    def run
      @activities += 1
      if @activities >= 3 || laying? == true
        "NO!"
      else
      "Clop clop clop clop!!!"
      end
    end

    def cranky?
      if @activities == 3
        @cranky = true
      else
        @cranky
      end
    end

    def standing?
      @standing
    end

    def sleep
      if @standing == false
        @activities = 0
        @cranky = false
      else
        "NO!"
      end
      # require "pry";binding.pry
    end

    def lay_down
      @standing = false
    end

    def laying?
      return true if @standing == false
    end

    def stand_up
      @standing = true
    end
end
