require './nesting'
require 'minitest/autorun'
require 'minitest/pride'

# The intent of this exercise is to practice working with nested collections.
# Some tests will be able to pass without any enumeration, and others will require 
# more complex iteration over multiple portions of the nested collection.

# All tests can be completed without using any enumerable other than #each.
# My suggestion would be to complete all tests using only #each, and then
# to go back over each test and refactor it using a different enumerable.

# The collection you're going to be using lives in ./nesting.rb and is called stores.  
# If you spot an error or want to make this exercise better, please let us know!

class NestedTest < MiniTest::Test

  def test_list_of_olive_garden_employess
    skip
    #^^^ Un-Skip each test
    #=======================
    # EXAMPLE
    employees = stores[:olive_garden][:employees]
    #=======================
    assert_equal ["Jeff", "Zach", "Samantha"], employees
  end

  def test_pancake_ingredients
    skip
    #=======================
    # pancake_ingredients = <your code here>
    #=======================
    assert_equal ["Flour", "Eggs", "Milk", "Syrup"], pancake_ingredients
  end

  def test_rissotto_price
    skip
    #=======================
    # risotto_price = <your code here>
    #=======================
    assert_equal 12, risotto_price
  end

  def test_big_mac_ingredients
    skip
    #=======================
    # big_mac_ingredients = <your code here>
    #=======================
    assert_equal ['Bun','Hamburger','Ketchup','pickles'], big_mac_ingredients
  end
  
  def test_list_of_restaurants
    skip
    #=======================
    # store_names = <your code here>
    #=======================
    assert_equal [:olive_garden, :dennys, :macdonalds], store_names
  end

  def test_list_of_dishes_names_for_olive_garden
    skip
    #=======================
    # dishes_names = <your code here>
    #=======================
    assert_equal ['Risotto', 'Steak'], dishes_names
  end

  def test_list_of_employees_across_all_restaurants
    skip
    #=======================
    # employee_names = <your code here>
    #=======================
    assert_equal ["Jeff","Zach","Samantha","Bob","Sue","James","Alvin","Simon","Theodore"], employee_names
  end

  def test_list_of_all_ingredients_across_all_restaurants
    skip
    #=======================
    # ingredients = <your code here>
    #=======================
    assert_equal ["Rice",
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
                  "Salt"], ingredients
  end

  def test_full_menu_price_for_olive_garden
    skip
    #=======================
    # full_menu_price = <your code here>
    #=======================
    assert_equal 27, full_menu_price
  end

  def test_all_ingredients_for_Macdonalds
    skip
    #=======================
    # olive_garden_menu = <your code here>
    #=======================
    expected = ({"Risotto"=>{:name=>"Risotto", :ingredients=>["Rice", "Cheese", "Butter"], :price=>12},
                  "Steak"=>{:name=>"Steak", :ingredients=>["Beef", "Garlic"], :price=>15}})
    assert_equal expected, olive_garden_menu
  end

  def test_menu_accross_all_restaurants
     skip
    #=======================
    #  full_menu = <your code here>
    #=======================
    expected = ({"Risotto"=>
                      {:name=>"Risotto", :ingredients=>["Rice", "Cheese", "Butter"], :price=>12},
                "Steak"=>
                    {:name=>"Steak", :ingredients=>["Beef", "Garlic"], :price=>15},
                "Pancakes"=>
                     {:name=>"Pancakes",
                      :ingredients=>["Flour", "Eggs", "Milk", "Syrup"],
                      :price=>10},
                "Waffles"=>
                      {:name=>"Waffles", :ingredients=>["Flour", "Eggs", "Syrup"], :price=>7},
                "Big Mac"=>
                    {:name=>"Big Mac",
                    :ingredients=>["Bun", "Hamburger", "Ketchup", "pickles"],
                    :price=>5},
                "Fries"=>
                    {:name=>"Fries", :ingredients=>["Potatoes", "Salt"], :price=>2}
                  })
    assert_equal expected, full_menu
  end

end
