require 'minitest/autorun'
require 'minitest/pride'

class NestedCollectionsTest < Minitest::Test
  
  def test_2D_array
    skip
    numbers = [[1, 2], [9, 4, 89], 9]
    
    assert_equal __, numbers.first
    assert_equal __, numbers[0][1]
    assert_equal __, numbers[1][3]
    assert_equal __, numbers[2]
  end
  
  def test_2D_array_access
    skip
    numbers = [15, [45, 0, nil], [8]]
    
    assert_equal 15, __
    assert_nil __
    assert_equal 8, __
  end
  
  def test_3D_array_access
    skip
    numbers = [[9, [4], [89, 11, 42]], [23, 2], 9]
    
    assert_equal [23, 2], __
    assert_equal 11, __
    assert_equal [4], __
  end
  
  def test_2D_hash
    skip
    new_restaurants = {
      cultura: {cuisine: "Latin American", seats_available: 20}, 
      wallys: {cuisine: "Wisconsin treats", seats_available: 50}
    }
    expected_cultura = __
    expected_wallys_cuisine = __
      
    assert_equal expected_cultura, new_restaurants[:cultura]
    assert_equal expected_wallys_cuisine, new_restaurants[:wallys][:cuisine]
    assert_equal __, new_restaurants.values.first[:seats_available]
  end
  
  def test_3D_hash_access
    skip
    stars = {
      proxima_centauri: {distance: 4.2, magnitudes: {
        apparent: -26.72, absolute: 4.8
      }},
      sirius_a: {distance: 8.6, magnitudes: {apparent: -1.46, absolute: 1.4}}
    }
      
    assert_equal 8.6, __
    assert_equal -26.72, __
    assert_equal ({apparent: -1.46, absolute: 1.4}), __
  end
  
  def test_mixed_array_access
    skip
    orders = [
      {10944 => {date: (Date.today - 1), products: ['shampoo', 'toothbrush']}},
      {10945 => {date: Date.today, products: ['handsoap']}}
    ]
    
    assert_equal 10944, __
    assert_equal Date.today, __
    assert_equal 'shampoo', __
  end
  
  def test_mixed_hash_access
    skip
    plants = {
      dahlia: {
        "Crichton Honey" => {
          'magenta': ['purple', 'red'], 
          'peach': ['orange', 'yellow', 'white'], 
          'green': ['yellow', 'blue']
        }, 
        "Whimsey" => ['yellow', ['blue', 'rose']], 
        "Kasasagi" => 'fire colors'
      },
      hollyhock: ["Chater's Salmon Queen", "Blackberry"]
    }
    
    assert_equal ['yellow', ['blue', 'rose']], __
    assert_equal ['yellow', 'blue'], __
    assert_equal "Blackberry", __
    assert_equal "white", __
    assert_equal "rose", __
  end
  
end