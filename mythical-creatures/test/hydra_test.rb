require 'minitest/autorun'
require 'minitest/pride'
require './lib/hydra'

class HydraTest < Minitest::Test

  def test_hydra_has_a_name

    hydra = Hydra.new("Pete")
    assert_equal "Pete", hydra.name
  end

  def test_hydra_is_alive_by_default
    hydra = Hydra.new("Carly")
    assert hydra.alive?
  end

  def test_hydra_has_array_of_heads
    hydra = Hydra.new("Steve", 4)
    assert_equal Array, hydra.heads.class
    assert_equal 4, hydra.heads.count
  end

  def test_hydra_has_3_heads_by_default
    hydra = Hydra.new("Jessica")
    assert_equal 3, hydra.heads.count
  end

  def test_hydra_heads_are_class_Head

    hydra = Hydra.new("Sally", 2)
    hydra.heads.each do |head|
      assert_equal Head, head.class
    end
  end

  def test_each_hydra_head_has_a_status_and_name
    hydra = Hydra.new("Herb")
    hydra.heads.each_with_index do |head,index|
      assert_equal :fire_breathing_terror, head.status?
      assert_equal "head_#{index}", head.name
    end
  end

  def test_hero_has_a_name
    hercules = Hero.new("Herc")
    assert_equal "Herc", hercules.name
  end

  def test_when_hero_swings_a_hydra_head_is_chopped
    hydra = Hydra.new("Marvin")
    hero = Hero.new("Diana")

    hero.swing_sword_at(hydra)
    head_status = hydra.heads.map {|head| head.status?}
    assert_equal [:chopped, :fire_breathing_terror, :fire_breathing_terror], head_status

    hero.swing_sword_at(hydra)
    head_status = hydra.heads.map {|head| head.status?}
    assert_equal [:chopped, :chopped, :fire_breathing_terror], head_status
  end

  def test_when_head_is_chopped_it_can_be_cauterized
    hydra = Hydra.new("Marvin")
    hero = Hero.new("Diana")

    hero.swing_sword_at(hydra)
    hero.swing_sword_at(hydra)
    hero.cauterize_w_torch(hydra)
    head_status = hydra.heads.map {|head| head.status?}
    assert_equal [:cauterized, :chopped, :fire_breathing_terror], head_status
  end

  def test_when_no_heads_chopped_they_cant_be_cauterized
    hydra = Hydra.new("Marvin")
    hero = Hero.new("Diana")

    hero.cauterize_w_torch(hydra)
    head_status = hydra.heads.map {|head| head.status?}
    assert_equal [:fire_breathing_terror, :fire_breathing_terror, :fire_breathing_terror], head_status
  end

  def test_if_hero_waits_chopped_head_grows_back
    hydra = Hydra.new("Marvin")
    hero = Hero.new("Diana")

    hero.swing_sword_at(hydra)
    hero.swing_sword_at(hydra)
    hero.swing_sword_at(hydra)
    head_status = hydra.heads.map {|head| head.status?}
    assert_equal [:chopped, :chopped, :chopped], head_status

    assert_equal "While you've been dilly dallying one of the Hydra's heads has grown back!", hero.wait_around(hydra)

    head_status = hydra.heads.map {|head| head.status?}
    assert_equal [:fire_breathing_terror, :chopped, :chopped], head_status
  end

  def test_if_hero_waits_and_no_heads_to_grow_back_message
    hydra = Hydra.new("Marvin")
    hero = Hero.new("Diana")

    assert_equal "Umm...hey, not to prod, but fire breathing beast in front of you here.  Unless you're planning on roasting marshmallows, you might want to do something about it", hero.wait_around(hydra)
  end


  def test_a_cauterized_head_cant_grow_back
    hydra = Hydra.new("Marvin")
    hero = Hero.new("Diana")

    hero.swing_sword_at(hydra)
    hero.cauterize_w_torch(hydra)
    hero.wait_around(hydra)

    head_status = hydra.heads.map {|head| head.status?}
    assert_equal [:cauterized, :fire_breathing_terror, :fire_breathing_terror], head_status
  end

  def test_when_all_heads_chopped_and_cauterized_hydra_is_dead
    hydra = Hydra.new("Marvin")
    hero = Hero.new("Diana")

    hero.swing_sword_at(hydra)
    hero.swing_sword_at(hydra)
    hero.swing_sword_at(hydra)
    hero.cauterize_w_torch(hydra)
    hero.cauterize_w_torch(hydra)
    hero.cauterize_w_torch(hydra)

    refute hydra.alive?
  end

end
