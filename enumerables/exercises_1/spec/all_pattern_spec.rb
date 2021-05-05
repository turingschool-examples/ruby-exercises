RSpec.describe 'All Pattern' do
  it 'all zeros' do
    numbers = [0, 0, 0, 0, 0, 0, 0]
    all_zeros = true
    numbers.each do |number|
      all_zeros = false unless number.zero?
    end
    expect(all_zeros).to eq(true)
  end

  it 'not all zeros' do
    numbers = [0, 0, 0, 0, 1, 0, 0, 0]
    all_zeros = true
    numbers.each do |number|
      all_zeros = false unless number.zero?
    end
    expect(all_zeros).to eq(false)
  end

  it 'all gone' do
    words = ["gone", "gone", "gone", "gone", "gone", "gone", "gone"]
    all_gone = true
    words.each do |word|
      all_gone = false unless word == "gone"
    end
    expect(all_gone).to eq(true)
  end

  it 'not all gone' do
    words = ["gone", "gone", "gone", "gone", "gone", "there", "gone", "gone"]
    # all_gone = words.all? == "gone"
    all_gone = true
    words.map do |word|
      all_gone = false unless word == "gone"
    end
    expect(all_gone).to eq(false)
  end

  it 'all empty' do
    strings = ["", "", "", "", "", "", ""]
    all_empty = true
    strings.each do |string|
      all_empty = false unless string.empty?
    end
    expect(all_empty).to eq(true)
  end

  it 'not all empty' do
    strings = ["", "", "", "full", "", "", ""]
    # Your code goes here
    expect(all_empty).to eq(false)
  end

  xit 'not all uppercase' do
    words = ["DOUGHNUT", "CASH", "MAIN", "bOWl", "SMACK", "SAND"]
    # Your code goes here
    expect(all_caps).to eq(false)
  end

  xit 'all lies' do
    lies = [false, false, false, false]
    # Your code goes here
    expect(all_lies).to eq(true)
  end

  xit 'all multiples of seven' do
    numbers = [42, 14, 35, 49, 28, 56, 21, 7]
    # Your code goes here
    expect(all_multiples_of_7).to eq(true)
  end

  xit 'not all 3 digits long' do
    numbers = [981, 831, 509, 332, 892, 8999, 110]
    # Your code goes here
    expect(all_3_digits).to eq(false)
  end

  xit 'all four letter words' do
    words = ["love", "hate", "fire", "bird", "call"]
    # Your code goes here
    expect(all_4_letters).to eq(true)
  end
end
