require 'minitest/autorun'
require 'minitest/pride'
require_relative 'ogre'

class OgreTest < Minitest::Test
  def test_it_has_a_name
    ogre = Ogre.new('Brak')

    assert_equal 'Brak', ogre.name
  end

  def test_it_can_live_somewhere_by_default
    ogre = Ogre.new('Brak')

    assert_equal 'Swamp', ogre.home
  end

  def test_it_doesnt_have_to_live_in_a_swamp
    ogre = Ogre.new('Brak', 'The Ritz')

    assert_equal 'The Ritz', ogre.home
  end

  def test_it_can_meet_humans
    ogre = Ogre.new('Brak')
    human = Human.new
    assert 'Jane', human.name

    ogre.encounter

    assert_equal 1, ogre.encounter_counter
  end

  def test_humans_only_notices_ogre_every_third_time
    ogre = Ogre.new('Brak')
    human = Human.new

    ogre.encounter
    ogre.encounter
    ogre.encounter

    assert true, human.notices_ogre?
  end

  def test_human_notices_ogre_the_sisxth_time
    ogre = Ogre.new('Brak')
    human = Human.new

    6.times do
      ogre.encounter
    end

    assert true, human.notices_ogre?
  end

  def test_it_can_swing_a_club
    ogre = Ogre.new('Brak')
    ogre.swing_a_club

    assert_equal 1, ogre.swings
  end

  def test_it_swings_the_club_when_the_human_notices_it
    ogre = Ogre.new('Brak')

    ogre.encounter

    assert_equal 1, ogre.swings
  end

  def test_it_hits_the_human_every_second_time_it_swings
    ogre = Ogre.new('Brak')
    human = Human.new

    6.times do
      ogre.encounter
    end

    assert 0, ogre.encounter_counter
    assert 2, ogre.swings
    assert true, ogre.hit?(human)
    assert_equal true, human.knocked_out?
  end

  def test_human_wakes_up_when_ogre_apologizes
    ogre = Ogre.new('Brak')
    human = Human.new

    ogre.apologize(human)

    assert_equal false, human.knocked_out?
  end
end
