RSpec.describe 'map pattern' do

  it 'test 1' do
    names = ["alice", "bob", "charlie"]
    capitalized_names = []
    names.each do |name|
      capitalized_names << name.capitalize
    end
    expect(capitalized_names).to eq(["Alice", "Bob", "Charlie"])
  end

  xit 'test 2' do
    family = {
      mother: "alice",
      father: "bob",
      brother: "charlie"
    }
    capitalized_family = {}
    family.each do |relationship, name|
      capitalized_family[relationship] = name.capitalize
    end
    expected = {
      mother: "Alice",
      father: "Bob",
      brother: "Charlie"
    }
    expect(capitalized_family).to eq(expected)
  end

  xit 'test 3' do
    numbers = [1, 2, 3, 4, 5]
    doubles = []
    numbers.each do |number|
      # Your Code Here
    end
    expect(doubles).to eq([2, 4, 6, 8, 10])
  end

  xit 'test 4' do
    numbers = {
      one: 1,
      two: 2,
      three: 3,
      four: 4,
      five: 5
    }
    doubles = {}
    numbers.each do |name, number|
      # Your Code Here
    end
    expected = {
      one: 2,
      two: 4,
      three: 6,
      four: 8,
      five: 10
    }
    expect(doubles).to eq(expected)
  end

  xit 'test 5' do
    numbers = [1, 2, 3, 4, 5]
    squares = []
    # Your Code Here

    expect(squares).to eq([1, 4, 9, 16, 25])
  end

  xit 'test 6' do
    numbers = {
      one: 1,
      two: 2,
      three: 3,
      four: 4,
      five: 5
    }
    squares = {}
    # Your Code Here

    expected = {
      one: 1,
      two: 4,
      three: 9,
      four: 16,
      five: 25
    }
    expect(squares).to eq(expected)
  end

  xit 'test 7' do
    names = ["alice", "bob", "charlie", "david", "eve"]
    #Your Code Here

    expect(lengths).to eq([5, 3, 7, 5, 3])
  end

  xit 'test 8' do
    family = {
      mother: "alice",
      father: "bob",
      brother: "charlie",
      uncle: "david",
      sister: "eve"
    }
    #Your Code Here

    expected = {
      mother: 5,
      father: 3,
      brother: 7,
      uncle: 5,
      sister: 3
    }
    expect(lengths).to eq(expected)
  end

  xit 'test 9' do
    names = ["alice", "bob", "charlie", "david", "eve"]
    #Your Code Here

    expect(backwards).to eq(["ecila", "bob", "eilrahc", "divad", "eve"])
  end

  xit 'test 10' do
    family = {
      mother: "alice",
      father: "bob",
      brother: "charlie",
      uncle: "david",
      sister: "eve"
    }
    #Your Code Here

    expected = {
      mother: "ecila",
      father: "bob",
      brother: "eilrahc",
      uncle: "divad",
      sister: "eve"
    }
    expect(backwards).to eq(expected)
  end
end

