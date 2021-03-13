gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/wizard'

class WizardTest < Minitest::Test
  def test_has_name
    wizard = Wizard.new("Eric")
    assert_equal "Eric", wizard.name
  end

  def test_can_have_different_name
    # skip
    wizard = Wizard.new("Alex")
    assert_equal "Alex", wizard.name
  end

  def test_is_bearded_by_default
    # skip
    wizard = Wizard.new("Ben")
    assert_equal true, wizard.bearded?
  end

  def test_is_not_always_bearded
    # skip
    wizard = Wizard.new("Valerie", bearded: false)
    assert_equal false, wizard.bearded?
  end

  def test_has_root_powers
    # skip
    wizard = Wizard.new("Sarah", bearded: false)
    assert_equal "sudo chown ~/bin", wizard.incantation("chown ~/bin")
  end

  def test_has_lots_of_root_powers
    # skip
    wizard = Wizard.new("Rob", bearded: false)
    assert_equal "sudo rm -rf /home/mirandax", wizard.incantation("rm -rf /home/mirandax")
  end

  def test_starts_rested
    # skip
    wizard = Wizard.new("Leigh", bearded: false)
    assert_equal true, wizard.rested?
  end

  def test_can_cast_spells
    # skip
    wizard = Wizard.new("Nick", bearded: false)
    assert_equal "MAGIC MISSILE!", wizard.cast
  end

  def test_gets_tired_after_casting_three_spells
    # skip
    wizard = Wizard.new("Brittany", bearded: false)
    wizard.cast
    wizard.cast
    assert_equal true, wizard.rested?
    wizard.cast
    assert_equal false, wizard.rested?
  end

end
