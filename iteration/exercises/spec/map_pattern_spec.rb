RSpec.describe 'map pattern' do

  it 'test 1' do
    names = ["alice", "bob", "charlie"]
    capitalized_names = []
    names.each do |name|
      capitalized_names << name.capitalize
    end
    expect(capitalized_names).to eq(["Alice", "Bob", "Charlie"])
  end

  it 'test 2' do
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



  it 'test 3' do
    numbers = [1, 2, 3, 4, 5]
    doubles = []

    numbers.each do |number|
      doubles << number * 2
    end

    expect(doubles).to eq([2, 4, 6, 8, 10])
  end



  it 'test 4' do
    numbers = {
      one: 1,
      two: 2,
      three: 3,
      four: 4,
      five: 5
    }
    doubles = {}

    numbers.each do |name, number|
      doubles[name] = number * 2
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


  it 'test 5' do
    numbers = [1, 2, 3, 4, 5]
    squares = []

    numbers.each do |number|
      squares << number ** 2
    end

    expect(squares).to eq([1, 4, 9, 16, 25])
  end



  it 'test 6' do
    numbers = {
      one: 1,
      two: 2,
      three: 3,
      four: 4,
      five: 5
    }
    squares = {}
   
    numbers.each do |word, number|
      squares[word] = number ** 2
    end

    expected = {
      one: 1,
      two: 4,
      three: 9,
      four: 16,
      five: 25
    }
    expect(squares).to eq(expected)
  end



  it 'test 7' do
    names = ["alice", "bob", "charlie", "david", "eve"]
    lengths = []

    names.each do |name|
      lengths << name.length
    end 

    expect(lengths).to eq([5, 3, 7, 5, 3])
  end




  it 'test 8' do
    family = {
      mother: "alice",
      father: "bob",
      brother: "charlie",
      uncle: "david",
      sister: "eve"
    }
    
    lengths = {}

    family.each do |relationship, name|
      lengths[relationship] = name.length
    end

    expected = {
      mother: 5,
      father: 3,
      brother: 7,
      uncle: 5,
      sister: 3
    }
    expect(lengths).to eq(expected)
  end




  it 'test 9' do
    names = ["alice", "bob", "charlie", "david", "eve"]
    
    backwards = []

    names.each do |name|
      backwards << name.reverse
    end

    expect(backwards).to eq(["ecila", "bob", "eilrahc", "divad", "eve"])
  end




  it 'test 10' do
    family = {
      mother: "alice",
      father: "bob",
      brother: "charlie",
      uncle: "david",
      sister: "eve"
    }

    backwards = {}

    family.each do |relationship, name|
      backwards[relationship] = name.reverse
    end

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

