RSpec.describe 'map pattern' do

  it 'capitalizes' do
    names = ["alice", "bob", "charlie"]
    capitalized_names = []
    
    names.each do |name|
      capitalized_names << name.capitalize
    end

    expect(capitalized_names).to eq(["Alice", "Bob", "Charlie"])
  end

  it 'doubles' do
    numbers = [1, 2, 3, 4, 5]
    doubles = []

    numbers.each do |number|
      doubles << number * 2
    end

    expect(doubles).to eq([2, 4, 6, 8, 10])
  end

  it 'squares' do
    numbers = [1, 2, 3, 4, 5]
    squares = []

    numbers.each do |num|
      squares << num * num
    end

    expect(squares).to eq([1, 4, 9, 16, 25])
  end

  it 'lengths' do
    names = ["alice", "bob", "charlie", "david", "eve"]
    lengths = []

    names.each do |name|
      lengths << name.length
    end

    expect(lengths).to eq([5, 3, 7, 5, 3])
  end

  it 'normalize zip codes' do
    numbers = [234, 10, 9119, 38881]
    zip_code = []

    numbers.each do |num|
      zip_code << num.to_s.rjust(5, "0")
    end

    expect(zip_code).to eq(["00234", "00010", "09119", "38881"])
  end

  it 'backwards' do
    names = ["alice", "bob", "charlie", "david", "eve"]
    backwards = []

    names.each do |name|
      backwards << name.reverse
    end

    expect(backwards).to eq(["ecila", "bob", "eilrahc", "divad", "eve"])
  end

  it 'words with no vowels' do
    words = ["green", "sheep", "travel", "least", "boat"]
    without_vowels = []

    words.each do |word|
      without_vowels.push(word.delete("aeiou"))
    end

    expect(without_vowels).to  eq(["grn", "shp", "trvl", "lst", "bt"])
  end

  it 'trims last letter' do
    animals = ["dog", "cat", "mouse", "frog", "platypus"]
    trimmed = []

    animals.each do |animal|
      trimmed << animal.chop
    end

    expect(trimmed).to eq(["do", "ca", "mous", "fro", "platypu"])
  end
end
