RSpec.describe 'Nested Collections' do
  it 'test 1' do
    coordinates = [[2,5],[87,2],[56,39],[3,46]]
    # Using the coordinates variable defined above
    # Retrive the second element
    second = coordinates[1]

    expect(second).to eq([87, 2])
  end

  it 'test 2' do
    coordinates = [[2,5],[87,2],[56,39],[3,46]]
    # Using the coordinates variable defined above
    # Retrive the value 39
    thirty_nine = coordinates[2][1]
    expect(thirty_nine).to eq(39)
  end

  it 'test 3' do
    coordinates = [[2,5],[87,2],[56,39],[3,46]]
    # Using the coordinates variable defined above
    # set the last coordinates to [6, 55]
    coordinates[3] = [6, 55]

    expected = [[2,5],[87,2],[56,39],[6,55]]
    expect(coordinates).to eq(expected)
  end

  it 'test 4' do
    coordinates = [[2,5],[87,2],[56,39],[3,46]]
    # Using the coordinates variable defined above
    # set the second element of the last coordinates
    # to 0
    coordinates.last[1] = 0

    expected = [[2,5],[87,2],[56,39],[3, 0]]
    expect(coordinates).to eq(expected)
  end

  it 'test 5' do
    coordinates = [[2,5],[87,2],[56,39],[3,46]]
    # Using the coordinates variable defined above
    # add the coordinate [4, 14]
    coordinates << [4, 14]

    expected = [[2,5],[87,2],[56,39],[3,46],[4, 14]]
    expect(coordinates).to eq(expected)
  end

  it 'test 6' do
    team = {
      pitchers: ["Kenny", "Joan", "Shabaz"],
      fielders: ["Luke", "Chris", "Megan", "Mark", "Mackenzie"],
      catchers: ["Johnny"]
    }
    # Using the team variable defined above
    # retrieve all of the pitchers
    pitchers = team[:pitchers]
    expected = ["Kenny", "Joan", "Shabaz"]
    expect(pitchers).to eq(expected)
  end

  it 'test 7' do
    team = {
      pitchers: ["Kenny", "Joan", "Shabaz"],
      fielders: ["Luke", "Chris", "Megan", "Mark", "Mackenzie"],
      catchers: ["Johnny"]
    }
    # Using the team variable defined above
    # add "Phil" as a pitcher
    team[:pitchers] << "Phil"

    expected = {
      pitchers: ["Kenny", "Joan", "Shabaz", "Phil"],
      fielders: ["Luke", "Chris", "Megan", "Mark", "Mackenzie"],
      catchers: ["Johnny"]
    }
    expect(team).to eq(expected)
  end

  it 'test 8' do
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
    expect(team).to eq(expected)
  end

  it 'test 9' do
    team = {
      pitchers: ["Kenny", "Joan", "Shabaz"],
      fielders: ["Luke", "Chris", "Megan", "Mark", "Mackenzie"],
      catchers: ["Johnny"]
    }
    # Using the team variable defined above
    # Find out how many fielders there are
    num_fielders = team[:fielders].count
    expect(num_fielders).to eq(5)
  end

  it 'test 10' do
    team = {
      pitchers: ["Kenny", "Joan", "Shabaz"],
      fielders: ["Luke", "Chris", "Megan", "Mark", "Mackenzie"],
      catchers: ["Johnny"]
    }
    # Using the team variable defined above
    # Find out if "Kenny" is a pitcher
    kenny_is_pitcher = team[:pitchers].include?("Kenny")
    expect(kenny_is_pitcher).to eq(true)
  end

  it 'test 11' do
    # HINT: You may find it valuable to break the three_day_forecast variable
    # into multiple lines to make it more readable

    three_day_forecast = {
      days: [
              {high: 70,low: 63,summary: "Mostly Sunny"},
              {high: 55,low: 47,summary: "Partly Cloudy"},
              {high: 77,low: 64,summary: "Sunny"}
            ],
      "date" => "6-21-18",
      ref_num: 3456789765456787656}
    # Using the three_day_forecast variable defined above,
    # retrieve the expected piece of information

    actual = three_day_forecast[:ref_num]
    expected = 3456789765456787656
    expect(actual).to eq(expected)
  end

  it 'test 12' do
    three_day_forecast = {
      days: [
              {high: 70,low: 63,summary: "Mostly Sunny"},
              {high: 55,low: 47,summary: "Partly Cloudy"},
              {high: 77,low: 64,summary: "Sunny"}
            ],
      "date" => "6-21-18",
      ref_num: 3456789765456787656
    }
    # Using the three_day_forecast variable defined above,
    # retrieve the expected piece of information

    actual = three_day_forecast[:days]
    expected = [{high: 70,low: 63,summary: "Mostly Sunny"},{high: 55,low: 47,summary: "Partly Cloudy"},{high: 77,low: 64,summary: "Sunny"}]
    expect(actual).to eq(expected)
  end

  xit 'test 13' do
    three_day_forecast = {days: [{high: 70,low: 63,summary: "Mostly Sunny"},{high: 55,low: 47,summary: "Partly Cloudy"},{high: 77,low: 64,summary: "Sunny"}], "date" => "6-21-18",ref_num: 3456789765456787656}
    # Using the three_day_forecast variable defined above,
    # retrieve the expected piece of information

    actual = ________
    expected = "6-21-18"
    expect(actual).to eq(expected)
  end

  xit 'test 14' do
    three_day_forecast = {days: [{high: 70,low: 63,summary: "Mostly Sunny"},{high: 55,low: 47,summary: "Partly Cloudy"},{high: 77,low: 64,summary: "Sunny"}], "date" => "6-21-18",ref_num: 3456789765456787656}
    # Using the three_day_forecast variable defined above,
    # retrieve the expected piece of information

    actual = _________
    expected = [:days, "date", :ref_num]
    expect(actual).to eq(expected)
  end

  xit 'test 15' do
    three_day_forecast = {days: [{high: 70,low: 63,summary: "Mostly Sunny"},{high: 55,low: 47,summary: "Partly Cloudy"},{high: 77,low: 64,summary: "Sunny"}], "date" => "6-21-18",ref_num: 3456789765456787656}
    # Using the three_day_forecast variable defined above,
    # retrieve the expected piece of information

    actual = ________
    expected = 55
    expect(actual).to eq(expected)
  end

  xit 'test 16' do
    three_day_forecast = {days: [{high: 70,low: 63,summary: "Mostly Sunny"},{high: 55,low: 47,summary: "Partly Cloudy"},{high: 77,low: 64,summary: "Sunny"}], "date" => "6-21-18",ref_num: 3456789765456787656}
    # Using the three_day_forecast variable defined above,
    # retrieve the expected piece of information

    actual = ________
    expected = [:high, :low, :summary]
    expect(actual).to eq(expected)
  end

  xit 'test 17' do
    three_day_forecast = {days: [{high: 70,low: 63,summary: "Mostly Sunny"},{high: 55,low: 47,summary: "Partly Cloudy"},{high: 77,low: 64,summary: "Sunny"}], "date" => "6-21-18",ref_num: 3456789765456787656}
    # Using the three_day_forecast variable defined above,
    # retrieve the expected piece of information

    actual = ________
    expected = [77, 64, "Sunny"]
    expect(actual).to eq(expected)
  end

  xit 'test 18' do
    three_day_forecast = {days: [{high: 70,low: 63,summary: "Mostly Sunny"},{high: 55,low: 47,summary: "Partly Cloudy"},{high: 77,low: 64,summary: "Sunny"}], "date" => "6-21-18",ref_num: 3456789765456787656}
    # Using the three_day_forecast variable defined above,
    # retrieve the expected piece of information

    actual = _________
    expected = "date"
    expect(actual).to eq(expected)
  end

  xit 'test 19' do
    three_day_forecast = {days: [{high: 70,low: 63,summary: "Mostly Sunny"},{high: 55,low: 47,summary: "Partly Cloudy"},{high: 77,low: 64,summary: "Sunny"}], "date" => "6-21-18",ref_num: 3456789765456787656}
    # Using the three_day_forecast variable defined above,
    # Change the high on the fist day to 99
    _______
    expected = {days: [{high: 99,low: 63,summary: "Mostly Sunny"},{high: 55,low: 47,summary: "Partly Cloudy"},{high: 77,low: 64,summary: "Sunny"}], "date" => "6-21-18",ref_num: 3456789765456787656}
    expect(three_day_forecast).to eq(expected)
  end

  xit 'test 20' do
    three_day_forecast = {days: [{high: 70,low: 63,summary: "Mostly Sunny"},{high: 55,low: 47,summary: "Partly Cloudy"},{high: 77,low: 64,summary: "Sunny"}], "date" => "6-21-18",ref_num: 3456789765456787656}
    # Using the three_day_forecast variable defined above,
    # Add a new key "time" with the value "12:30"
    _________
    expected = {"time" => "12:30", days: [{high: 70,low: 63,summary: "Mostly Sunny"},{high: 55,low: 47,summary: "Partly Cloudy"},{high: 77,low: 64,summary: "Sunny"}], "date" => "6-21-18",ref_num: 3456789765456787656}
    expect(three_day_forecast).to eq(expected)
  end
end
