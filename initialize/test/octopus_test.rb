require 'minitest/autorun'
require 'minitest/pride'
require './lib/eel'
require './lib/narwhal'
require './lib/octopus'

class OctopusTest < Minitest::Test
  def test_it_exists
    nancy = Narwhal.new({cute: true, weight: 500, name: "Nancy"})
    orville = Octopus.new("Orville", nancy)
    assert_instance_of Octopus, orville
  end

  def test_it_has_a_name
    nancy = Narwhal.new({cute: true, weight: 500, name: "Nancy"})
    orville = Octopus.new("Orville", nancy)
    assert_equal "Orville", orville.name
  end

  def test_it_has_another_animal_as_a_friend
    nancy = Narwhal.new({cute: true, weight: 500, name: "Nancy"})
    orville = Octopus.new("Orville", nancy)
    assert_equal nancy, orville.friend
  end

  def test_it_can_take_any_animal_as_a_friend
    eel = Eel.new("Earl")
    orville = Octopus.new("Orville", eel)
    assert_equal eel, orville.friend
  end
end
