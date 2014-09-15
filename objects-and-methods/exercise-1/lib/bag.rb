require_relative 'candy'
class Bag
  def initialize
    @candies = []
  end

  def empty?
    candies.empty?
  end

  def count
    candies.count
  end

  def candies
    @candies
  end

  def << (candy)
   @candies << candy
  end

  def contains?(type)
    candies.any? { |candy| candy.type == type }
  end
end


# bag = Bag.new
# bag << Candy.new('Skittles')
# bag.contains? 'Skittles'
# candy = Candy.new('Snickers').type
#
# bag
#


