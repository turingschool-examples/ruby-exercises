require 'pry'
class Hobbit

    def initialize(name, disposition='homebody')
        @name = name
        @disposition = disposition
        @age = 0
        @adult = false
        @old = false
    end

    def name
        @name
    end

    def disposition
        @disposition
    end

    def age
        @age
    end

    def celebrate_birthday
        @age += 1
    end 

    def adult?
        if @age >= 33
            @adult = true
        else
            @adult
        end
    end

    def old?
        if @age >= 33
            @old = true
        else
            @old
        end
    end

    def has_ring?
        if name == "Frodo"
            true
        else 
            false
        end
    end

    def is_short?
        true
    end

end