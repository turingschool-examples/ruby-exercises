gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/medusa'

class MedusaTest < Minitest::Test
  def test_it_has_a_name
    medusa = Medusa.new("Cassiopeia")
    assert_equal "Cassiopeia", medusa.name
  end

  def test_when_first_created_she_has_no_statues
    # skip
    medusa = Medusa.new("Cassiopeia")
    assert_equal true, medusa.statues.empty?
  end

  def test_when_staring_at_a_person_she_gains_a_statue
    # skip
    medusa = Medusa.new("Cassiopeia")
    victim = Person.new("Perseus")

    medusa.stare(victim)
    assert_equal 1, medusa.statues.count
    assert_equal "Perseus", medusa.statues.first.name
  end

  def test_when_staring_at_a_person_that_person_turns_to_stone
    # skip
    medusa = Medusa.new("Cassiopeia")
    victim = Person.new("Perseus")

    assert_equal false, victim.stoned?
    medusa.stare(victim)
    assert_equal true, victim.stoned?
  end

  def test_can_only_have_three_victims
    # skip
    medusa = Medusa.new("Cassiopeia")
    persues = Person.new("Perseus")
    hawk = Person.new("Hawk")
    dalia = Person.new("Dalia")
    ted = Person.new("Ted")
    medusa.stare(persues)
    medusa.stare(hawk)
    medusa.stare(dalia)
    medusa.stare(ted)
    assert_equal 3, medusa.statues.length


  end

  def test_if_a_fourth_victim_is_stoned_first_is_unstoned
    # skip
    medusa = Medusa.new("Cassiopeia")
    persues = Person.new("Perseus")
    hawk = Person.new("Hawk")
    dalia = Person.new("Dalia")
    ted = Person.new("Ted")
    medusa.stare(persues)
    medusa.stare(hawk)
    medusa.stare(dalia)
    medusa.stare(ted)
    assert_equal [hawk, dalia, ted], medusa.statues
    assert_equal false, persues.stoned?
    assert_equal true, ted.stoned?
  end

end
