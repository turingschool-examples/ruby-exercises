gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'product'
require_relative 'catalogue'

class CatalogueTest < Minitest::Test
  def test_without_products
    catalogue = Catalogue.new
    assert_equal nil, catalogue.cheapest
  end

  def test_cheapest_of_one
    skip
    catalogue = Catalogue.new
    catalogue << Product.new("scissors", 8)
    assert_equal "scissors", catalogue.cheapest
  end

  def test_cheapest_product
    skip
    catalogue = Catalogue.new
    catalogue << Product.new("cupcake", 3)
    catalogue << Product.new("shirt", 23)
    catalogue << Product.new("button", 1)
    assert_equal "button", catalogue.cheapest
  end
end
