class Dragon

    def initialize(name, color, rider)
        @name = name
        @rider = rider
        @color = color
        @hungry = true
        @eat = 0
    end

    def name
        @name
    end

    def rider
        @rider
    end

    def color
        @color
    end

    def hungry?
        @hungry
    end

    def eat
        @eat += 1
        if @eat == 3 
            @hungry = false
        end
    end

end