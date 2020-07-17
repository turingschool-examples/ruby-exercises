class Hobbit
  attr_reader :name, :disposition, :age
  def initialize(name, disposition = "homebody")
    @name = name
    @disposition = disposition
    @age = 0
    @adult = false
    @old = false
    @has_ring = false
  end

  def disposition
    @disposition
  end

  def age
    @age
  end

  def celebrate_birthday
    @age +=1
  end

  def adult?
    if age <= 32
      @adult = false
    else
      @adult = true
    end
  end

  def old?
    if @age >= 101
      @old = true
    end
  end

  def has_ring?
    if @name == 'Frodo'
      @has_ring = true
    end
  end

  def is_short?
    true
  end
end
