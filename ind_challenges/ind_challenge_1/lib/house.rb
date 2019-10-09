class House

  attr_reader :price, :address, :rooms, :add_room

  def initialize (price, address)
    @price = price
    @address = address
    @rooms = []
  end

  def add_room(room_name)
    @rooms << room_name
  end

end
