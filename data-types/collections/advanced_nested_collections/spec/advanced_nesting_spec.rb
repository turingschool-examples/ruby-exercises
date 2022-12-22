require_relative 'nesting'

# The intent of this exercise is to practice working with nested collections.
# Some tests will be able to pass without any enumeration, and others will require
# more complex iteration over multiple portions of the nested collection.

# All tests can be completed without using any enumerable other than #each.
# My suggestion would be to complete all tests using only #each, and then
# to go back over each test and refactor it using a different enumerable.

# The collection you're going to be using lives in ./nesting.rb and is called stores.
# If you spot an error or want to make this exercise better, please let us know!


RSpec.describe 'Advanced Nested Collections' do
  it 'test 1' do
    # EXAMPLE
    # employees = stores[:olive_garden][:employees]

    # expected = ["Jeff", "Zach", "Samantha"]
    expect(stores[:olive_garden][:employees]).to eq(["Jeff", "Zach", "Samantha"])
  end

  it 'test 2' do
    # Find the ingredients for pancakes
    # pancake_ingredients = _____

    # expected = ["Flour", "Eggs", "Milk", "Syrup"]
    expect(stores[:dennys][:dishes].first[:ingredients]).to eq(["Flour", "Eggs", "Milk", "Syrup"])
  end

  it 'test 3' do
    # Find the price of risotto
    # risotto_price = ____

    expect(stores[:olive_garden][:dishes].first[:price]).to eq(12)
  end

  it 'test 4' do
    # Find the ingredients for a Big Mac
    # big_mac_ingredients = ____

    # expected = ['Bun','Hamburger','Ketchup','pickles']
    expect(stores[:macdonalds][:dishes][0][:ingredients]).to eq(['Bun','Hamburger','Ketchup','pickles'])
  end

  it 'test 5' do
    # Find a list of restaurants
    # store_names = ____

    # expected = [:olive_garden, :dennys, :macdonalds]
    expect(stores.keys).to eq([:olive_garden, :dennys, :macdonalds])
  end

  it 'test 6' do
    # Find dishes names for Olive Garden
    # dishes_names = ____

    list_of_dishes = stores[:olive_garden][:dishes].map do |dish_info|
      dish_info[:name]
    end

    expect(list_of_dishes).to eq(['Risotto', 'Steak'])
  end

  it 'test 7' do
    # Return a list of employees across
    # all restaurants
    # employee_names = ____

    all_employees = stores.flat_map do |restaurant, info|
      info[:employees]
    end

    # expected = ["Jeff", "Zach", "Samantha", "Bob", "Sue", "James", "Alvin", "Simon", "Theodore"]
    expect(all_employees).to eq(["Jeff", "Zach", "Samantha", "Bob", "Sue", "James", "Alvin", "Simon", "Theodore"])
  end


  it 'test 8' do
    # Return a list of all ingredients across all restaurants
    # ingredients = ____

    ingredients = stores.flat_map do |restaurant, info|
    info[:dishes].flat_map do |dish|
      dish[:ingredients]
    end
  end


    expected = [
      "Rice",
      "Cheese",
      "Butter",
      "Beef",
      "Garlic",
      "Flour",
      "Eggs",
      "Milk",
      "Syrup",
      "Flour",
      "Eggs",
      "Syrup",
      "Bun",
      "Hamburger",
      "Ketchup",
      "pickles",
      "Potatoes",
      "Salt"
    ]
    expect(ingredients).to eq(expected)
  end

  it 'test 9' do
    # Return the full menu price for Olive Garden
    # full_menu_price = ____

    full_menu_price = stores[:olive_garden][:dishes].map do |dish|
      dish[:price]
    end.sum

    expect(full_menu_price).to eq(27)
  end

  it 'test 10' do
    # Return the full menu for Olive Garden
    # olive_garden_menu = _____
    olive_garden_menu = {}

    stores[:olive_garden][:dishes].select do |dish|
      olive_garden_menu[dish[:name]] = {:name => dish[:name], :ingredients => dish[:ingredients], :price => dish[:price]}
    end
    
    expected = {
      "Risotto" => {
        :name => "Risotto",
        :ingredients => ["Rice", "Cheese", "Butter"],
        :price => 12
      },
      "Steak" => {
        :name => "Steak",
        :ingredients => ["Beef", "Garlic"],
        :price => 15
      }
    }
    expect(olive_garden_menu).to eq(expected)
  end

  it 'test 11' do
    # Return a full menu across all restaurants
    # full_menu = ____

    full_menu = {}

    stores.each do |restaurant, info|
      info[:dishes].select do |dish|
        full_menu[dish[:name]] = {:name => dish[:name], :ingredients => dish[:ingredients], :price => dish[:price]}
      end
    end
    

    expected = {
      "Risotto" => {
        :name => "Risotto",
        :ingredients => ["Rice", "Cheese", "Butter"],
        :price => 12
      },
      "Steak" => {
        :name => "Steak",
        :ingredients => ["Beef", "Garlic"],
        :price => 15
      },
      "Pancakes" => {
        :name => "Pancakes",
        :ingredients => ["Flour", "Eggs", "Milk", "Syrup"],
        :price => 10
      },
      "Waffles" => {
        :name => "Waffles",
        :ingredients => ["Flour", "Eggs", "Syrup"],
        :price => 7
      },
      "Big Mac" => {
        :name => "Big Mac",
        :ingredients => ["Bun", "Hamburger", "Ketchup", "pickles"],
        :price => 5
      },
      "Fries" => {
        :name => "Fries",
        :ingredients => ["Potatoes", "Salt"],
        :price => 2
      }
    }

    expect(full_menu).to eq(expected)
  end
end
