require "minitest/autorun"
require "minitest/pride"
require_relative 'direwolf'
require_relative 'stark'

class DirewolfTest < Minitest::Test

  def test_direwolf_has_a_name
    wolf = Direwolf.new('Nymeria')

    assert_equal 'Nymeria', wolf.name
  end

  def test_default_home_is_beyond_the_wall_and_can_have_another_name
    skip

    wolf = Direwolf.new('Lady')

    assert_equal 'Beyond the Wall', wolf.home
    assert_equal 'Lady', wolf.name
  end

  def test_default_size_is_massive
    skip

    wolf = Direwolf.new('Ghost')

    assert_equal 'Massive', wolf.size
    assert_equal 'Ghost', wolf.name
  end

  def test_can_have_another_home_or_size
    skip

    wolf = Direwolf.new('Shaggydog', "Winterfell", "Smol Pupper")

    assert_equal "Shaggydog", wolf.name
    assert_equal 'Winterfell', wolf.home
    assert_equal "Smol Pupper", wolf.size
  end

  def test_starks_are_in_winterfell_by_default
    skip

    wolf = Direwolf.new('Summer', 'Winterfell')
    stark = Stark.new('Bran')

    assert_equal 'Winterfell', wolf.home
    assert_equal 'Winterfell', stark.location
  end

  def test_starts_off_with_no_Starks_to_protect
    skip

    wolf = Direwolf.new('Nymeria')
    stark = Stark.new('Arya')

    assert_equal [], wolf.starks_to_protect
    assert_equal 'Arya', stark.name
    assert_equal 'Winterfell', stark.location
    assert_equal 'Beyond the Wall', wolf.home
  end

  def test_protects_stark_kids
    skip

    wolf = Direwolf.new('Nymeria', 'Riverlands')
    stark = Stark.new('Arya', 'Riverlands')

    wolf.protects(stark)

    assert_equal 'Arya', wolf.starks_to_protect.first.name
    assert_equal 'Riverlands',  stark.location
    assert_equal 'Riverlands', wolf.home
  end

  def test_can_only_protect_stark_kids_if_home_and_location_match
    skip

    wolf = Direwolf.new('Ghost')
    stark = Stark.new('John', "King's Landing")

    wolf.protects(stark)

    assert_equal [], wolf.starks_to_protect
    assert_equal 'Beyond the Wall', wolf.home
  end

  def test_direwolf_can_only_protect_two_starks_at_a_time
    skip
    
    wolf_1 = Direwolf.new('Summer', "Winterfell")
    wolf_2 = Direwolf.new('Lady', "Winterfell")
    stark_1 = Stark.new('Sansa')
    stark_2 = Stark.new('John')
    stark_3 = Stark.new('Rob')
    stark_4 = Stark.new('Bran')
    stark_5 = Stark.new('Arya')

    wolf_1.protects(stark_1)
    wolf_1.protects(stark_2)
    wolf_2.protects(stark_3)
    wolf_2.protects(stark_4)
    wolf_2.protects(stark_5)

    assert_equal 2, wolf_1.starks_to_protect.length
    assert_equal 2, wolf_2.starks_to_protect.length
  end

  def test_starks_start_off_unsafe
    skip

    stark = Stark.new('John', "The Wall")

    assert_equal false, stark.safe?
    assert_equal 'Winter is Coming', stark.house_words
  end

  def test_protected_status_changes_once_protected
    skip

    wolf = Direwolf.new('Nymeria', "Winterfell")
    stark_1 = Stark.new('Arya')
    stark_2 = Stark.new('Sansa')

    refute stark_1.safe?
    wolf.protects(stark_1)
    assert stark_1.safe?
    refute stark_2.safe?
    assert_equal 'The North Remembers', stark_1.house_words
    assert_equal 'Winter is Coming', stark_2.house_words
  end

  def test_hunts_white_walkers_when_not_protecting_starks
    skip

    wolf = Direwolf.new('Nymeria', "Winterfell")
    stark_2 = Stark.new('Sansa')

    assert wolf.hunts_white_walkers?
    wolf.protects(stark_2)
    refute wolf.hunts_white_walkers?
  end

  def test_wolves_can_stop_protecting_starks_and_they_become_unsafe_if_left
    skip

    wolf_1 = Direwolf.new('Summer', "Winterfell")
    wolf_2 = Direwolf.new('Lady', "Winterfell")
    stark_1 = Stark.new('Sansa')
    stark_2 = Stark.new('Arya')

    wolf_1.protects(stark_2)
    assert stark_2.safe?
    wolf_2.protects(stark_1)
    wolf_1.leaves(stark_2)


    assert_equal [],  wolf_1.starks_to_protect
    assert_equal 'Sansa', wolf_2.starks_to_protect[0].name
    assert_instance_of Array, wolf_2.starks_to_protect
    refute stark_2.safe?
  end

  def test_if_stark_not_protected_when_direwolf_leaves_then_stark_returned
    skip

    wolf_1 = Direwolf.new('Summer', "Winterfell")
    wolf_2 = Direwolf.new('Lady', "Winterfell")
    stark_1 = Stark.new('Sansa')
    stark_2 = Stark.new('Arya')
    stark_3 = Stark.new('Rickon')

    wolf_1.protects(stark_2)
    assert stark_2.safe?
    wolf_2.protects(stark_1)
    wolf_1.leaves(stark_2)
    never_protected = wolf_2.leaves(stark_3)

    assert_equal 'Rickon', never_protected.name
    assert_instance_of Stark, never_protected
    assert_equal 'Winter is Coming', stark_2.house_words
    assert_equal 'The North Remembers', stark_1.house_words
    assert_equal 'Winter is Coming', stark_3.house_words
  end
end
