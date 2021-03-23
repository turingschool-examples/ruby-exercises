RSpec.describe 'find pattern' do

  it 'test 1' do
    ages = [39, 45, 29, 24, 50]
    younger_than_thirty = nil
    ages.each do |age|
      if age < 30
        younger_than_thirty = age
        break
      end
    end
    expect(younger_than_thirty).to eq(29)
  end

  it 'test 2' do
    ages = {
      abdi: 39,
      hassan: 45,
      ladonna: 29,
      margaret: 24,
      miguel: 50
    }
    younger_than_thirty = nil
    ages.each do |name, age|
      if age < 30
        younger_than_thirty = name
        break
      end
    end
    expect(younger_than_thirty).to eq(:ladonna)
  end

  xit 'test 3' do
    ages = [39, 45, 29, 24, 50]
    older_than_fifty = nil
    ages.each do |age|
      # Your Code Here
    end

    expect(older_than_fifty).to be_nil
  end

  xit 'test 4' do
    ages = {
      abdi: 39,
      hassan: 45,
      ladonna: 29,
      margaret: 24,
      miguel: 50
    }
    older_than_fifty = nil
    ages.each do |name, age|
      # Your Code Here
    end

    expect(older_than_fifty).to be_nil
  end

  xit 'test 5' do
    ages = [39, 45, 29, 24, 50]
    multiple_of_three = nil
    # Your Code Here

    expect(multiple_of_three).to eq(39)
  end

  xit 'test 6' do
    ages = {
      abdi: 39,
      hassan: 45,
      ladonna: 29,
      margaret: 24,
      miguel: 50
    }
    multiple_of_three = nil
    # Your Code Here

    expect(multiple_of_three).to eq(:abdi)
  end

  xit 'test 7' do
    people = ["Willie", "Carmen Sandiego", "Bryan", "Faith", "Zac"]
    # Your Code Here

    expect(carmen).to eq("Carmen Sandiego")
  end

  xit 'test 8' do
    places = {
      Bangkok: "Willie",
      Santa_Fe: "Carmen Sandiego",
      Rome: "Bryan",
      Munich: "Faith",
      Mogudishu: "Zac"
    }
    # Your Code Here

    expect(where_is_carmen_sandiego).to eq(:Santa_Fe)
  end

  xit 'test 9' do
    numbers = [3, 7, 13, 11, 10, 2, 17]
    # Your Code Here

    expect(even).to eq(10)
  end

  xit 'test 10' do
    purchases = {
      "shoes" => :paid,
      "backpack" => :paid,
      "books" => :pending,
      "posters" => :paid,
      "food" => :pending
    }
    # Your Code Here

    expect(pending).to eq(:books)
  end

  xit 'test 11' do
    purchases = {
      "shoes" => :paid,
      "backpack" => :paid,
      "books" => :pending,
      "posters" => :paid,
      "food" => :pending
    }
    # Your Code Here

    expect(starts_with_b).to eq("backpack")
  end
end
