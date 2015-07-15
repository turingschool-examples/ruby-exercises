class Ghostbuster

  def initialize(name)
    @nme = name
  end

  def say_my_name
    puts "I'm #{name}"
  end

  def get_car(car == "ECTO-1")
    @car = car
  end


end

ghostbuster = Ghostbuster.new("Ray")
ghostbuster.say_my_name
puts ghostbuster.ride

