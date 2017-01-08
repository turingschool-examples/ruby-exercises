require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/inventory'
require_relative '../lib/snowglobe'
require_relative '../lib/order'

class InventoryTest < MiniTest::Test
  def test_it_creates_instance_of_inventory
    inventory = Inventory.new

    assert_instance_of Inventory, inventory
  end

  def test_the_inventory_sheet_is_a_hash
    skip
    inventory = Inventory.new

    assert_equal Hash, inventory.sheet.class
  end

  def test_the_inventory_is_empty
    skip
    inventory = Inventory.new

    assert inventory.sheet.empty?
  end

  def test_it_adds_snowglobe_to_inventory
    skip
    snowglobe = Snowglobe.new({type: 'Prince If I Was Your Girlfriend'})
    inventory = Inventory.new

    inventory.add_snowglobe_to_inventory(snowglobe, 42)

    assert_equal 1, inventory.sheet.count
    assert_equal ({"Prince If I Was Your Girlfriend"=>42}), inventory.sheet
  end

  def test_it_adds_two_snowglobes_to_inventory
    skip
    snowglobe = Snowglobe.new({type: 'Prince If I Was Your Girlfriend'})
    snowglobe2 = Snowglobe.new({type: 'Gloria Gaynor I Will Survive'})
    inventory = Inventory.new

    inventory.add_snowglobe_to_inventory(snowglobe, 42)
    inventory.add_snowglobe_to_inventory(snowglobe2, 42)

    assert_equal 2, inventory.sheet.count
    assert_equal ({"Prince If I Was Your Girlfriend"=>42, "Gloria Gaynor I Will Survive"=>42}), inventory.sheet
  end

  def test_it_does_not_add_two_of_the_same_snowglobes_to_inventory
    skip
    snowglobe = Snowglobe.new({type: 'Prince If I Was Your Girlfriend'})
    snowglobe2 = Snowglobe.new({type: 'Prince If I Was Your Girlfriend'})
    inventory = Inventory.new

    inventory.add_snowglobe_to_inventory(snowglobe, 42)
    inventory.add_snowglobe_to_inventory(snowglobe2, 42)

    assert_equal 1, inventory.sheet.count
    assert_equal ({"Prince If I Was Your Girlfriend"=>84}), inventory.sheet
  end

  def test_it_adjusts_inventory
    skip
    snowglobe = Snowglobe.new({type: 'Prince If I Was Your Girlfriend'})
    snowglobe2 = Snowglobe.new({type: 'Gloria Gaynor I Will Survive'})

    inventory = Inventory.new

    inventory.add_snowglobe_to_inventory(snowglobe, 42)
    inventory.add_snowglobe_to_inventory(snowglobe2, 42)

    order = Order.new({type: 'Prince If I Was Your Girlfriend', quantity: 7})

    inventory.adjust_inventory(order)

    assert_equal 35, inventory.sheet['Prince If I Was Your Girlfriend']
  end

  def test_it_restocks_inventory
    skip
    #inventory should be restocked to maintain a total quantity of 42 for each item

    snowglobe = Snowglobe.new({type: 'Prince If I Was Your Girlfriend'})
    snowglobe2 = Snowglobe.new({type: 'Gloria Gaynor I Will Survive'})

    inventory = Inventory.new

    inventory.add_snowglobe_to_inventory(snowglobe, 42)
    inventory.add_snowglobe_to_inventory(snowglobe2, 42)

    order = Order.new({type: 'Prince If I Was Your Girlfriend', quantity: 7})
    order2 = Order.new({type: 'Gloria Gaynor I Will Survive', quantity: 5})

    inventory.adjust_inventory(order)
    inventory.adjust_inventory(order2)

    inventory.restock_inventory

    result = ({"Prince If I Was Your Girlfriend"=>42,
               "Gloria Gaynor I Will Survive"=>42})

    assert_equal result, inventory.sheet
  end
end
