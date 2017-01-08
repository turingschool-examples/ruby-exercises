require 'minitest/autorun'
require 'minitest/pride'
require './lib/vending_machine'
require './lib/snack'

class VendingMachineTest < Minitest::Test

  def test_vending_machine_class_exists
    vm = VendingMachine.new

    assert_equal VendingMachine, vm.class
  endg

  def test_vending_machine_is_empty
    vm = VendingMachine.new

    assert_equal [], vm.inventory
  end

  def test_vending_machine_has_one_item_in_it
    vm = VendingMachine.new
    snack = Snack.new("White Castle Burger", 1)

    vm.add_snack(snack)

    assert_equal 1, vm.inventory.count
    assert_equal "White Castle Burger", vm.inventory[0].name
    assert_equal 1, vm.inventory[0].quantity
  end

  def test_vending_machine_has_two_items_in_it
    vm = VendingMachine.new
    snack1 = Snack.new("White Castle Burger", 1)
    snack2 = Snack.new("Snickers", 4)

    vm.add_snack(snack1)
    vm.add_snack(snack2)

    assert_equal 2, vm.inventory.count
    assert_equal "White Castle Burger", vm.inventory[0].name
    assert_equal 1, vm.inventory[0].quantity
    assert_equal "Snickers", vm.inventory[1].name
    assert_equal 4, vm.inventory[1].quantity
  end

  def test_can_gather_just_names_of_snacks
    vm = VendingMachine.new
    snack1 = Snack.new("White Castle Burger", 1)
    snack2 = Snack.new("Snickers", 4)

    vm.add_snack(snack1)
    vm.add_snack(snack2)

    assert_equal ["White Castle Burger", "Snickers"], vm.snacks_by_name
  end

  def test_can_collect_items_by_quantity
    vm = VendingMachine.new
    snack1 = Snack.new("White Castle Burger", 1)
    snack2 = Snack.new("Snickers", 4)
    snack3 = Snack.new("Burrito", 4)

    vm.add_snack(snack1)
    vm.add_snack(snack2)
    vm.add_snack(snack3)

    #showing a few ways of how to test for this
    assert_equal ({1=>[snack1], 4=>[snack2, snack3]}), vm.how_many_snacks
    # play around with what is happening below
    assert_equal "Snickers", vm.how_many_snacks[4][0].name
    assert_equal "Burrito", vm.how_many_snacks[4][1].name
  end

  def test_can_collect_all_items_by_first_letter_of_alphabet
    vm = VendingMachine.new
    snack1 = Snack.new("White Castle Burger", 1)
    snack2 = Snack.new("Snickers", 4)
    snack3 = Snack.new("Wafer Cookies", 2)

    vm.add_snack(snack1)
    vm.add_snack(snack2)
    vm.add_snack(snack3)

    assert_equal ({"W"=>[snack1, snack3], "S"=>[snack2]}), vm.inventory_by_alphabet
    #another way to do this:
    assert_equal "White Castle Burger", vm.inventory_by_alphabet["W"].first.name
  end

  def test_total_number_of_items_in_vending_machine
    vm = VendingMachine.new
    snack1 = Snack.new("White Castle Burger", 1)
    snack2 = Snack.new("Snickers", 4)
    snack3 = Snack.new("Wafer Cookies", 2)

    vm.add_snack(snack1)
    vm.add_snack(snack2)
    vm.add_snack(snack3)

    assert_equal 7, vm.total_num_items
  end

  def test_can_create_string_with_first_letter_of_name
    vm = VendingMachine.new
    snack1 = Snack.new("White Castle Burger", 1)
    snack2 = Snack.new("Snickers", 4)
    snack3 = Snack.new("Wafer Cookies", 2)

    vm.add_snack(snack1)
    vm.add_snack(snack2)
    vm.add_snack(snack3)

    assert_equal "WSW", vm.first_letters
  end

  def test_can_change_quantity_by_one
    vm = VendingMachine.new
    snack1 = Snack.new("White Castle Burger", 1)
    snack2 = Snack.new("Snickers", 4)
    snack3 = Snack.new("Wafer Cookies", 2)

    vm.add_snack(snack1)
    vm.add_snack(snack2)
    vm.add_snack(snack3)

    snack1.increase_quantity_by_one
    snack2.increase_quantity_by_one
    snack3.increase_quantity_by_one

    assert_equal 2, vm.inventory[0].quantity
    assert_equal 5, vm.inventory[1].quantity
    assert_equal 3, vm.inventory[2].quantity
  end
end
