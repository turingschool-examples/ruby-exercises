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
    skip
    coordinates = [[2,5],[87,2],[56,39],[3,46]]
    # Using the coordinates variable defined above
    # Retrive the value 39
    thirty_nine = _________
    assert_equal 39, thirty_nine
  end

  def test_3
    skip
    coordinates = [[2,5],[87,2],[56,39],[3,46]]
    # Using the coordinates variable defined above
    # set the last coordinates to [6, 55]
    _________

    expected = [[2,5],[87,2],[56,39],[6,55]]
    assert_equal expected, coordinates
  end

  def test_4
    skip
    coordinates = [[2,5],[87,2],[56,39],[3,46]]
    # Using the coordinates variable defined above
    # set the second element of the last coordinates
    # to 0
    ________

    expected = [[2,5],[87,2],[56,39],[3, 0]]
    assert_equal expected, coordinates
  end

  def test_5
    skip
    coordinates = [[2,5],[87,2],[56,39],[3,46]]
    # Using the coordinates variable defined above
    # add the coordinate [4, 14]
    _________

    expected = [[2,5],[87,2],[56,39],[3,46],[4, 14]]
    assert_equal expected, coordinates
  end

  def test_6
    skip
    team = {
      pitchers: ["Kenny", "Joan", "Shabaz"],
      fielders: ["Luke", "Chris", "Megan", "Mark", "Mackenzie"],
      catchers: ["Johnny"]
    }
    # Using the team variable defined above
    # retrieve all of the pitchers
    pitchers = _________
    expected = ["Kenny", "Joan", "Shabaz"]
    assert_equal expected, pitchers
  end

  def test_7
    skip
    team = {
      pitchers: ["Kenny", "Joan", "Shabaz"],
      fielders: ["Luke", "Chris", "Megan", "Mark", "Mackenzie"],
      catchers: ["Johnny"]
    }
    # Using the team variable defined above
    # add "Phil" as a pitcher
    __________

    expected = {
      pitchers: ["Kenny", "Joan", "Shabaz", "Phil"],
      fielders: ["Luke", "Chris", "Megan", "Mark", "Mackenzie"],
      catchers: ["Johnny"]
    }
    assert_equal expected, team
  end

  def test_8
    skip
    team = {
      pitchers: ["Kenny", "Joan", "Shabaz"],
      fielders: ["Luke", "Chris", "Megan", "Mark", "Mackenzie"],
      catchers: ["Johnny"]
    }
    # Using the team variable defined above
    # create a new key :coaches with the value
    # of an empty array
    _________

    expected = {
      pitchers: ["Kenny", "Joan", "Shabaz"],
      fielders: ["Luke", "Chris", "Megan", "Mark", "Mackenzie"],
      catchers: ["Johnny"],
      coaches: []
    }
    assert_equal expected, team
  end

  def test_9
    skip
    team = {
      pitchers: ["Kenny", "Joan", "Shabaz"],
      fielders: ["Luke", "Chris", "Megan", "Mark", "Mackenzie"],
      catchers: ["Johnny"]
    }
    # Using the team variable defined above
    # Find out how many fielders there are
    num_fielders = ________
    assert_equal 5, num_fielders
  end

  def test_10
    skip
    team = {
      pitchers: ["Kenny", "Joan", "Shabaz"],
      fielders: ["Luke", "Chris", "Megan", "Mark", "Mackenzie"],
      catchers: ["Johnny"]
    }
    # Using the team variable defined above
    # Find out if "Kenny" is a pitcher
    kenny_is_pitcher = ________
    assert_equal true, kenny_is_pitcher
  end

  def test_11
    skip
    # HINT: You may find it valuable to break the three_day_forecast variable
    # into multiple lines to make it more readable

    three_day_forecast = {days: [{high: 70,low: 63,summary: "Mostly Sunny"},{high: 55,low: 47,summary: "Partly Cloudy"},{high: 77,low: 64,summary: "Sunny"}], "date" => "6-21-18",ref_num: 3456789765456787656}
    # Using the three_day_forecast variable defined above,
    # retrieve the expected piece of information

    actual = ________
    expected = 3456789765456787656
    assert_equal expected, actual
  end

  def test_12
    skip
    three_day_forecast = {days: [{high: 70,low: 63,summary: "Mostly Sunny"},{high: 55,low: 47,summary: "Partly Cloudy"},{high: 77,low: 64,summary: "Sunny"}], "date" => "6-21-18",ref_num: 3456789765456787656}
    # Using the three_day_forecast variable defined above,
    # retrieve the expected piece of information

    actual = ________
    expected = [{high: 70,low: 63,summary: "Mostly Sunny"},{high: 55,low: 47,summary: "Partly Cloudy"},{high: 77,low: 64,summary: "Sunny"}]
    assert_equal expected, actual
  end

  def test_13
    skip
    three_day_forecast = {days: [{high: 70,low: 63,summary: "Mostly Sunny"},{high: 55,low: 47,summary: "Partly Cloudy"},{high: 77,low: 64,summary: "Sunny"}], "date" => "6-21-18",ref_num: 3456789765456787656}
    # Using the three_day_forecast variable defined above,
    # retrieve the expected piece of information

    actual = ________
    expected = "6-21-18"
    assert_equal expected, actual
  end

  def test_14
    skip
    three_day_forecast = {days: [{high: 70,low: 63,summary: "Mostly Sunny"},{high: 55,low: 47,summary: "Partly Cloudy"},{high: 77,low: 64,summary: "Sunny"}], "date" => "6-21-18",ref_num: 3456789765456787656}
    # Using the three_day_forecast variable defined above,
    # retrieve the expected piece of information

    actual = _________
    expected = [:days, "date", :ref_num]
    assert_equal expected, actual
  end

  def test_15
    skip
    three_day_forecast = {days: [{high: 70,low: 63,summary: "Mostly Sunny"},{high: 55,low: 47,summary: "Partly Cloudy"},{high: 77,low: 64,summary: "Sunny"}], "date" => "6-21-18",ref_num: 3456789765456787656}
    # Using the three_day_forecast variable defined above,
    # retrieve the expected piece of information

    actual = ________
    expected = 55
    assert_equal expected, actual
  end

  def test_16
    skip
    three_day_forecast = {days: [{high: 70,low: 63,summary: "Mostly Sunny"},{high: 55,low: 47,summary: "Partly Cloudy"},{high: 77,low: 64,summary: "Sunny"}], "date" => "6-21-18",ref_num: 3456789765456787656}
    # Using the three_day_forecast variable defined above,
    # retrieve the expected piece of information

    actual = ________
    expected = [:high, :low, :summary]
    assert_equal expected, actual
  end

  def test_17
    skip
    three_day_forecast = {days: [{high: 70,low: 63,summary: "Mostly Sunny"},{high: 55,low: 47,summary: "Partly Cloudy"},{high: 77,low: 64,summary: "Sunny"}], "date" => "6-21-18",ref_num: 3456789765456787656}
    # Using the three_day_forecast variable defined above,
    # retrieve the expected piece of information

    actual = ________
    expected = [77, 64, "Sunny"]
    assert_equal expected, actual
  end

  def test_18
    skip
    three_day_forecast = {days: [{high: 70,low: 63,summary: "Mostly Sunny"},{high: 55,low: 47,summary: "Partly Cloudy"},{high: 77,low: 64,summary: "Sunny"}], "date" => "6-21-18",ref_num: 3456789765456787656}
    # Using the three_day_forecast variable defined above,
    # retrieve the expected piece of information

    actual = _________
    expected = "date"
    assert_equal expected, actual
  end

  def test_19
    skip
    three_day_forecast = {days: [{high: 70,low: 63,summary: "Mostly Sunny"},{high: 55,low: 47,summary: "Partly Cloudy"},{high: 77,low: 64,summary: "Sunny"}], "date" => "6-21-18",ref_num: 3456789765456787656}
    # Using the three_day_forecast variable defined above,
    # Change the high on the fist day to 99
    _______
    expected = {days: [{high: 99,low: 63,summary: "Mostly Sunny"},{high: 55,low: 47,summary: "Partly Cloudy"},{high: 77,low: 64,summary: "Sunny"}], "date" => "6-21-18",ref_num: 3456789765456787656}
    assert_equal expected, three_day_forecast
  end

  def test_20
    skip
    three_day_forecast = {days: [{high: 70,low: 63,summary: "Mostly Sunny"},{high: 55,low: 47,summary: "Partly Cloudy"},{high: 77,low: 64,summary: "Sunny"}], "date" => "6-21-18",ref_num: 3456789765456787656}
    # Using the three_day_forecast variable defined above,
    # Add a new key "time" with the value "12:30"
    _________
    expected = {"time" => "12:30", days: [{high: 70,low: 63,summary: "Mostly Sunny"},{high: 55,low: 47,summary: "Partly Cloudy"},{high: 77,low: 64,summary: "Sunny"}], "date" => "6-21-18",ref_num: 3456789765456787656}
    assert_equal expected, three_day_forecast
  end
end
