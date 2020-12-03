require "minitest/autorun"
require "minitest/pride"

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

    summer_wolf = Direwolf.new('Summer', "Winterfell")
    lady_wolf = Direwolf.new('Lady', "Winterfell")
    sansa_stark = Stark.new('Sansa')
    john_stark = Stark.new('John')
    rob_stark = Stark.new('Rob')
    bran_stark = Stark.new('Bran')
    arya_stark = Stark.new('Arya')

    summer_wolf.protects(sansa_stark)
    summer_wolf.protects(john_stark)
    lady_wolf.protects(rob_stark)
    lady_wolf.protects(bran_stark)
    lady_wolf.protects(arya_stark)

    assert_includes summer_wolf.starks_to_protect, sansa_stark
    assert_includes summer_wolf.starks_to_protect, john_stark
    assert_includes lady_wolf.starks_to_protect, rob_stark
    assert_includes lady_wolf.starks_to_protect, bran_stark
    refute_includes lady_wolf.starks_to_protect, arya_stark
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
    arya_stark = Stark.new('Arya')
    sansa_stark = Stark.new('Sansa')

    wolf.protects(arya_stark)

    assert_equal true, arya_stark.safe?
    assert_equal false, sansa_stark.safe?
    assert_equal 'The North Remembers', arya_stark.house_words
    assert_equal 'Winter is Coming', sansa_stark.house_words
  end

  def test_hunts_white_walkers
    skip

    wolf = Direwolf.new('Nymeria', "Winterfell")

    assert_equal true, wolf.hunts_white_walkers?
  end

  def test_hunts_white_walkers_but_not_if_protecting_starks
    skip

    wolf = Direwolf.new('Nymeria', "Winterfell")
    stark = Stark.new('Sansa')

    wolf.protects(stark)
    assert_equal false, wolf.hunts_white_walkers?
  end

  def test_wolves_can_leave_and_stop_protecting_starks
    skip

    summer_wolf = Direwolf.new('Summer', "Winterfell")
    lady_wolf = Direwolf.new('Lady', "Winterfell")
    sansa_stark = Stark.new('Sansa')
    arya_stark = Stark.new('Arya')

    summer_wolf.protects(arya_stark)
    lady_wolf.protects(sansa_stark)
    summer_wolf.leaves(arya_stark)


    assert_equal [],  summer_wolf.starks_to_protect
    assert_equal 'Sansa', lady_wolf.starks_to_protect[0].name
    assert_instance_of Array, lady_wolf.starks_to_protect
    assert_equal false, arya_stark.safe?
  end

  def test_if_stark_not_protected_when_direwolf_leaves_then_that_stark_is_the_return_value
    skip

    summer_wolf = Direwolf.new('Summer', "Winterfell")
    lady_wolf = Direwolf.new('Lady', "Winterfell")
    sansa_stark = Stark.new('Sansa')
    arya_stark = Stark.new('Arya')
    rickon_stark = Stark.new('Rickon')

    summer_wolf.protects(arya_stark)
    lady_wolf.protects(sansa_stark)
    summer_wolf.leaves(arya_stark)

    expected = lady_wolf.leaves(rickon_stark)

    assert_instance_of Stark, expected
    assert_equal 'Rickon', expected.name
  end
end
