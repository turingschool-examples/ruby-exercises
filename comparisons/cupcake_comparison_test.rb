gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/homework'

class Cupcake
  include Comparable

  attr_reader :kind, :sugar_content
  def initialize(kind, sugar_content)
    @kind = kind
    @sugar_content = sugar_content
  end

  def <=>(other)
    sugar_content <=> other.sugar_content
  end
end

class CupcakeComparisonsTest < Minitest::Homework
  be_gentle!

  def test_equality
    c1 = Cupcake.new("chocolate", 45)
    c2 = Cupcake.new("chocolate", 45)
    maybe c1.object_id == c2.object_id
    maybe c1 == c2
    maybe c1 <= c2
    maybe c1 >= c2
    maybe c1 < c2
    maybe c1 > c2
  end

  def test_unequal
    carrot = Cupcake.new("carrot", 30)
    chocolate = Cupcake.new("chocolate", 45)
    maybe carrot == chocolate
    maybe carrot <= chocolate
    maybe carrot >= chocolate
    maybe carrot <  chocolate
    maybe carrot >  chocolate
  end

  def test_between
    carrot = Cupcake.new("carrot", 30)
    chocolate = Cupcake.new("chocolate", 45)
    caramel = Cupcake.new("caramel", 50)
    maybe chocolate.between?(carrot, caramel)
    maybe chocolate.between?(caramel, carrot)
    maybe carrot.between?(chocolate, caramel)
  end

  def test_sort
    chocolate = Cupcake.new("chocolate", 45)
    caramel = Cupcake.new("caramel", 50)
    carrot = Cupcake.new("carrot", 30)
    cupcakes = [caramel, carrot, chocolate]
    assert_equal __, cupcakes.sort
  end
end
