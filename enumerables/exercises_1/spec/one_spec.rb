RSpec.describe 'one' do

  it 'one more' do
    words = ["bigger", "better", "more", "improved", "advantageous"]
    exactly_one = words.one? do |word|
      word == 'more'
    end
    expect(exactly_one).to eq(true)
  end

  xit 'not even one ring' do
    ornaments = ["bracelet", "anklet", "earring"]
    exactly_one_ring = ornaments.one? do |ornament|
      # Your code goes here
    end
    expect(exactly_one_ring).to eq(false)
  end

  xit 'not just one ring' do
    ornaments = ["bracelet", "ring", "ring", "anklet", "earring"]
    # Your code goes here
    expect(exactly_one_ring).to eq(false)
  end

  xit 'one time' do
    words = ["morning", "time", "evening", "noon", "dusk", "dawn"]
    # Your code goes here
    expect(exactly_one_time).to eq(true)
  end

  xit 'one double digit number' do
    numbers = [8, 2, 10, 333, 9, 101]
    # Your code goes here
    expect(exactly_one_double_digit).to eq(true)
  end

  xit 'not even one number' do
    numbers = [3, 20, 81, 10, 391, 32]
    # Your code goes here
    expect(exactly_one_even_number).to eq(false)
  end
end
