gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'santa'

class SantaTest < Minitest::Test

  def test_santa_fits_down_the_chimney
    santa = Santa.new
    assert_equal true, santa.fits?, "Santa fits down the chimney"
  end

  def test_if_santa_eats_too_many_cookies_he_does_not_fit_down_the_chimney
    skip
    santa = Santa.new
    santa.eats_cookies 
    assert_equal true, santa.fits?, "He still fits"

    santa.eats_cookies
    assert_equal true, santa.fits?, "It's a bit of a sqeeze"

    santa.eats_cookies
    assert_equal false, santa.fits?, "Good thing his suit is stretchy or that wouldn't fit in that either"
  end
end
