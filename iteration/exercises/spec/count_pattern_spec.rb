RSpec.describe 'count pattern' do

  it 'test 1' do
    ages = [39, 45, 29, 24, 50]
    younger_than_thirty = 0
    ages.each do |age|
      if age < 30
        younger_than_thirty += 1
      end
    end
    expect(younger_than_thirty).to eq(2)
  end

  xit 'test 2' do
    ages = {
      abdi: 39,
      hassan: 45,
      ladonna: 29,
      margaret: 24,
      miguel: 50
    }
    younger_than_thirty = 0
    ages.each do |name, age|
      if age < 30
        younger_than_thirty += 1
      end
    end
    expect(younger_than_thirty).to eq(2)
  end

  xit 'test 3' do
    ages = [39, 45, 29, 24, 50]
    older_than_fifty = 0
    ages.each do |age|
      # Your Code Here
    end

    expect(older_than_fifty).to eq(0)
  end

  xit 'test 4' do
    ages = {
      abdi: 39,
      hassan: 45,
      ladonna: 29,
      margaret: 24,
      miguel: 50
    }
    older_than_fifty = 0
    ages.each do |name, age|
      # Your Code Here
    end

    expect(older_than_fifty).to eq(0)
  end

  xit 'test 5' do
    ages = [39, 45, 29, 24, 50]
    multiple_of_three = 0
    # Your Code Here

    expect(multiple_of_three).to eq(3)
  end

  xit 'test 6' do
    ages = {
      abdi: 39,
      hassan: 45,
      ladonna: 29,
      margaret: 24,
      miguel: 50
    }
    multiple_of_three = 0
    # Your Code Here

    expect(multiple_of_three).to eq(3)
  end

  xit 'test 7' do
    family = ["alice", "bob", "charlie", "david", "eve"]
    # Your Code Here

    assert_equal 2, names_with_three_letters
    expect(names_with_three_letters).to eq(2)
  end

  xit 'test 8' do
    family = {
      mother: "alice",
      father: "bob",
      brother: "charlie",
      uncle: "david",
      sister: "eve"
    }
    # Your Code Here

    assert_equal 2, names_with_three_letters
    expect(names_with_three_letters).to eq(2)
  end

  xit 'test 9' do
    prices = [1.0, 3.9, 5.99, 18.5, 20.0]
    # Your code goes here

    assert_equal 2, whole_numbers
    expect(whole_numbers).to eq(2)
  end

  xit 'test 10' do
    prices = {
      "shoes" => 1.0,
      "backpack" => 3.9,
      "books" => 5.99,
      "posters" => 18.5,
      "food" => 20.0
    }
    # Your Code Here

    expect(whole_numbers).to eq(2)
  end
end
