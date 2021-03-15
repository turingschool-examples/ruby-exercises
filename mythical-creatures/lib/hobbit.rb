class Hobbit
    attr_reader :name,
                     :disposition,
                     :age,
                     :adult,
                     :old,
                     :short

    def initialize(name, disposition = "homebody")
      @name = name
      @disposition = disposition
      @age = 0
      @adult = false
      @old = false
      @short = true
    end

    def celebrate_birthday
      @age += 1
    end

    def adult?
      return true if @age >= 33
      @adult
    end

    def old?
      return true if @age >= 101
      @old
    end

    def has_ring?
      return true if @name == "Frodo"
    else
      false
    end

    def is_short?
      @short
    end
end
