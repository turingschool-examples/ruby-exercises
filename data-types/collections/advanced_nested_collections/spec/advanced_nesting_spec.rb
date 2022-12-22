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

  ######################## PICK UP FROM HERE ########################
  xit 'test 7' do
    # Return a list of employees across
    # all restaurants
    # employee_names = ____
    all_employees = []

    stores.each do |restaurant|
      all_employees << restaurant[:employees]
    end

    all_employees

    # expected = ["Jeff", "Zach", "Samantha", "Bob", "Sue", "James", "Alvin", "Simon", "Theodore"]
    expect(all_employees).to eq(["Jeff", "Zach", "Samantha", "Bob", "Sue", "James", "Alvin", "Simon", "Theodore"])
  end

  xit 'test 8' do
    # Return a list of all ingredients
    # across all restaurants
    ingredients = ____

    # expected = [
    #   "Rice",
    #   "Cheese",
    #   "Butter",
    #   "Beef",
    #   "Garlic",
    #   "Flour",
    #   "Eggs",
    #   "Milk",
    #   "Syrup",
    #   "Flour",
    #   "Eggs",
    #   "Syrup",
    #   "Bun",
    #   "Hamburger",
    #   "Ketchup",
    #   "pickles",
    #   "Potatoes",
    #   "Salt"
    # ]
    expect(ingredients).to eq([
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
    ])
  end

  xit 'test 9' do
    # Return the full menu price for Olive Garden
    full_menu_price = ____

    expect(full_menu_price).to eq(27)
  end

  xit 'test 10' do
    # Return the full menu for Olive Garden

    olive_garden_menu = _____
    
    # expected = {
    #   "Risotto" => {
    #     :name => "Risotto",
    #     :ingredients => ["Rice", "Cheese", "Butter"],
    #     :price => 12
    #   },
    #   "Steak" => {
    #     :name => "Steak",
    #     :ingredients => ["Beef", "Garlic"],
    #     :price => 15
    #   }
    # }
    expect(olive_garden_menu).to eq({
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
    })
  end

  xit 'test 11' do
    # Return a full menu across all restaurants
    full_menu = ____

    # expected = {
    #   "Risotto" => {
    #     :name => "Risotto",
    #     :ingredients => ["Rice", "Cheese", "Butter"],
    #     :price => 12
    #   },
    #   "Steak" => {
    #     :name => "Steak",
    #     :ingredients => ["Beef", "Garlic"],
    #     :price => 15
    #   },
    #   "Pancakes" => {
    #     :name => "Pancakes",
    #     :ingredients => ["Flour", "Eggs", "Milk", "Syrup"],
    #     :price => 10
    #   },
    #   "Waffles" => {
    #     :name => "Waffles",
    #     :ingredients => ["Flour", "Eggs", "Syrup"],
    #     :price => 7
    #   },
    #   "Big Mac" => {
    #     :name => "Big Mac",
    #     :ingredients => ["Bun", "Hamburger", "Ketchup", "pickles"],
    #     :price => 5
    #   },
    #   "Fries" => {
    #     :name => "Fries",
    #     :ingredients => ["Potatoes", "Salt"],
    #     :price => 2
    #   }
    # }
    expect(full_menu).to eq({
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
    })
  end
end
