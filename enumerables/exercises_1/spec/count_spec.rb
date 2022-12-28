RSpec.describe 'count test' do

  it 'words with e' do
    words = ["thing", "phone", "bark", "belt", "shoe", "bath"]
    tally = words.count do |word|
      word.include?('e')
    end
    expect(tally).to eq(3)
  end

  it 'numbers greater than 17' do
    numbers = [9, 18, 12, 17, 1, 3, 99]
    tally = numbers.count do |number|
      number > 17
    end
    expect(tally).to eq(2)
  end

  it 'words that are uppercase' do
    words = ["trousers", "SOCKS", "sweater", "Cap", "SHOE", "TIE"]
    
    tally = words.count do |word|
      word.upcase == word
    end

    expect(tally).to eq(3)
  end

  it 'words ending in ing' do
    words = ["thought", "brake", "shin", "juice", "trash"]
    tally = words.count do |word|
      word.include?("ing")
    end
    expect(tally).to eq(0)
  end

  it 'even numbers' do
    numbers = [9, 2, 1, 3, 18, 39, 71, 4, 6]
    tally = numbers.count do |num|
      num.even?
    end
    expect(tally).to eq(4)
  end

  it 'multiples of 5' do
    numbers = [2, 5, 19, 25, 35, 67]
    tally = numbers.count do |num|
      num % 5 == 0
    end
    expect(tally).to eq(3)
  end

  it 'round prices' do
    prices = [1.0, 3.9, 5.99, 18.5, 20.0]
    tally = prices.count do |price|
      price.round == price
    end
    expect(tally).to eq(2)
  end

  it 'four letter words' do
    words = ["bake", "bark", "corn", "apple", "wart", "bird", "umbrella", "fart"]
    tally = words.count do |word|
      word.length == 4
    end
    expect(tally).to eq(6)
  end
end

