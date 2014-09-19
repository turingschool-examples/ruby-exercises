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

  attr_reader :candies

  def <<(candy)
    @candies << candy
  end

  def contains?(type)
    candies.any? { |candy| candy.type == type }
  end

  def grab(type)
    grabbed_candy = candies.find { |candy| candy.type == type }
    candies.delete(grabbed_candy)
  end

  def take(number)
    if number < 2
      candies.pop
    else
      candies.pop(number)
    end
  end

end
