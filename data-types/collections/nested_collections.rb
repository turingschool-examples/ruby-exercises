require 'minitest/autorun'
require 'minitest/pride'

class NestesdCollectionsTest < Minitest::Test

  def test_1
    coordinates = [[2,5],[87,2],[56,39],[3,46]]
    # Using the coordinates variable defined above
    # Retrive the second element
    second = coordinates[1]

    assert_equal [87, 2], second
  end

  def test_2

    coordinates = [[2,5],[87,2],[56,39],[3,46]]
    # Using the coordinates variable defined above
    # Retrive the value 39
    thirty_nine = coordinates[2][1]
    assert_equal 39, thirty_nine
  end

  def test_3

    coordinates = [[2,5],[87,2],[56,39],[3,46]]
    # Using the coordinates variable defined above
    # set the last coordinates to [6, 55]
    coordinates[3] = [6, 55]

    expected = [[2,5],[87,2],[56,39],[6,55]]
    assert_equal expected, coordinates
  end

  def test_4

    coordinates = [[2,5],[87,2],[56,39],[3,46]]
    # Using the coordinates variable defined above
    # set the second element of the last coordinates
    # to 0
    coordinates.last[1] = 0

    expected = [[2,5],[87,2],[56,39],[3, 0]]
    assert_equal expected, coordinates
  end

  def test_5

    coordinates = [[2,5],[87,2],[56,39],[3,46]]
    # Using the coordinates variable defined above
    # add the coordinate [4, 14]
    coordinates.push([4, 14])

    expected = [[2,5],[87,2],[56,39],[3,46],[4, 14]]
    assert_equal expected, coordinates
  end

  def test_6

    team = {
      pitchers: ["Kenny", "Joan", "Shabaz"],
      fielders: ["Luke", "Chris", "Megan", "Mark", "Mackenzie"],
      catchers: ["Johnny"]
    }
    # Using the team variable defined above
    # retrieve all of the pitchers
    pitchers = team[:pitchers]
    expected = ["Kenny", "Joan", "Shabaz"]
    assert_equal expected, pitchers
  end

  def test_7

    team = {
      pitchers: ["Kenny", "Joan", "Shabaz"],
      fielders: ["Luke", "Chris", "Megan", "Mark", "Mackenzie"],
      catchers: ["Johnny"]
    }
    # Using the team variable defined above
    # add "Phil" as a pitcher
    team[:pitchers] << 'Phil'

    expected = {
      pitchers: ["Kenny", "Joan", "Shabaz", "Phil"],
      fielders: ["Luke", "Chris", "Megan", "Mark", "Mackenzie"],
      catchers: ["Johnny"]
    }
    assert_equal expected, team
  end

  def test_8

    team = {
      pitchers: ["Kenny", "Joan", "Shabaz"],
      fielders: ["Luke", "Chris", "Megan", "Mark", "Mackenzie"],
      catchers: ["Johnny"]
    }
    # Using the team variable defined above
    # create a new key :coaches with the value
    # of an empty array
    team[:coaches] = []

    expected = {
      pitchers: ["Kenny", "Joan", "Shabaz"],
      fielders: ["Luke", "Chris", "Megan", "Mark", "Mackenzie"],
      catchers: ["Johnny"],
      coaches: []
    }
    assert_equal expected, team
  end

  def test_9

    team = {
      pitchers: ["Kenny", "Joan", "Shabaz"],
      fielders: ["Luke", "Chris", "Megan", "Mark", "Mackenzie"],
      catchers: ["Johnny"]
    }
    # Using the team variable defined above
    # Find out how many fielders there are
    num_fielders = team[:fielders].length
    assert_equal 5, num_fielders
  end

  def test_10

    team = {
      pitchers: ["Kenny", "Joan", "Shabaz"],
      fielders: ["Luke", "Chris", "Megan", "Mark", "Mackenzie"],
      catchers: ["Johnny"]
    }
    # Using the team variable defined above
    # Find out if "Kenny" is a pitcher
    kenny_is_pitcher = team[:pitchers].include?('Kenny')
    assert_equal true, kenny_is_pitcher
  end

  def test_11

    # HINT: You may find it valuable to break the three_day_forecast variable
    # into multiple lines to make it more readable

    three_day_forecast = {
      days: [{high: 70,low: 63,summary: "Mostly Sunny"}, {high: 55,low: 47,summary: "Partly Cloudy"}, {high: 77,low: 64,summary: "Sunny"}], "date" => "6-21-18",
      ref_num: 3456789765456787656}
    # Using the three_day_forecast variable defined above,
    # retrieve the expected piece of information

    actual = three_day_forecast[:ref_num]
    expected = 3456789765456787656
    assert_equal expected, actual
  end

  def test_12

    three_day_forecast = {days: [{high: 70,low: 63,summary: "Mostly Sunny"},{high: 55,low: 47,summary: "Partly Cloudy"},{high: 77,low: 64,summary: "Sunny"}], "date" => "6-21-18",ref_num: 3456789765456787656}
    # Using the three_day_forecast variable defined above,
    # retrieve the expected piece of information

    actual = three_day_forecast[:days]
    expected = [{high: 70,low: 63,summary: "Mostly Sunny"},{high: 55,low: 47,summary: "Partly Cloudy"},{high: 77,low: 64,summary: "Sunny"}]
    assert_equal expected, actual
  end

  def test_13

    three_day_forecast = {days: [{high: 70,low: 63,summary: "Mostly Sunny"},{high: 55,low: 47,summary: "Partly Cloudy"},{high: 77,low: 64,summary: "Sunny"}], "date" => "6-21-18",ref_num: 3456789765456787656}
    # Using the three_day_forecast variable defined above,
    # retrieve the expected piece of information

    actual = three_day_forecast['date']
    expected = "6-21-18"
    assert_equal expected, actual
  end

  def test_14

    three_day_forecast = {days: [{high: 70,low: 63,summary: "Mostly Sunny"},{high: 55,low: 47,summary: "Partly Cloudy"},{high: 77,low: 64,summary: "Sunny"}], "date" => "6-21-18",ref_num: 3456789765456787656}
    # Using the three_day_forecast variable defined above,
    # retrieve the expected piece of information

    actual = three_day_forecast.keys
    expected = [:days, "date", :ref_num]
    assert_equal expected, actual
  end

  def test_15

    three_day_forecast = {days: [{high: 70,low: 63,summary: "Mostly Sunny"},{high: 55,low: 47,summary: "Partly Cloudy"},{high: 77,low: 64,summary: "Sunny"}], "date" => "6-21-18",ref_num: 3456789765456787656}
    # Using the three_day_forecast variable defined above,
    # retrieve the expected piece of information

    actual = three_day_forecast[:days][1][:high]
    expected = 55
    assert_equal expected, actual
  end

  def test_16

    three_day_forecast = {days: [{high: 70,low: 63,summary: "Mostly Sunny"},{high: 55,low: 47,summary: "Partly Cloudy"},{high: 77,low: 64,summary: "Sunny"}], "date" => "6-21-18",ref_num: 3456789765456787656}
    # Using the three_day_forecast variable defined above,
    # retrieve the expected piece of information

    actual = three_day_forecast[:days][0].keys
    expected = [:high, :low, :summary]
    assert_equal expected, actual
  end

  def test_17

    three_day_forecast = {days: [{high: 70,low: 63,summary: "Mostly Sunny"},{high: 55,low: 47,summary: "Partly Cloudy"},{high: 77,low: 64,summary: "Sunny"}], "date" => "6-21-18",ref_num: 3456789765456787656}
    # Using the three_day_forecast variable defined above,
    # retrieve the expected piece of information

    actual = three_day_forecast[:days][2].values
    expected = [77, 64, "Sunny"]
    assert_equal expected, actual
  end

  def test_18

    three_day_forecast = {days: [{high: 70,low: 63,summary: "Mostly Sunny"},{high: 55,low: 47,summary: "Partly Cloudy"},{high: 77,low: 64,summary: "Sunny"}], "date" => "6-21-18",ref_num: 3456789765456787656}
    # Using the three_day_forecast variable defined above,
    # retrieve the expected piece of information

    actual = three_day_forecast.keys[1]
    expected = "date"
    assert_equal expected, actual
  end

  def test_19

    three_day_forecast = {days: [{high: 70,low: 63,summary: "Mostly Sunny"},{high: 55,low: 47,summary: "Partly Cloudy"},{high: 77,low: 64,summary: "Sunny"}], "date" => "6-21-18",ref_num: 3456789765456787656}
    # Using the three_day_forecast variable defined above,
    # Change the high on the fist day to 99
    three_day_forecast[:days][0][:high] = 99
    expected = {days: [{high: 99,low: 63,summary: "Mostly Sunny"},{high: 55,low: 47,summary: "Partly Cloudy"},{high: 77,low: 64,summary: "Sunny"}], "date" => "6-21-18",ref_num: 3456789765456787656}
    assert_equal expected, three_day_forecast
  end

  def test_20

    three_day_forecast = {days: [{high: 70,low: 63,summary: "Mostly Sunny"},{high: 55,low: 47,summary: "Partly Cloudy"},{high: 77,low: 64,summary: "Sunny"}], "date" => "6-21-18",ref_num: 3456789765456787656}
    # Using the three_day_forecast variable defined above,
    # Add a new key "time" with the value "12:30"
    three_day_forecast = {'time' => '12:30'}.merge(three_day_forecast)
    expected = {"time" => "12:30", days: [{high: 70,low: 63,summary: "Mostly Sunny"},{high: 55,low: 47,summary: "Partly Cloudy"},{high: 77,low: 64,summary: "Sunny"}], "date" => "6-21-18",ref_num: 3456789765456787656}
    assert_equal expected, three_day_forecast
  end
end
