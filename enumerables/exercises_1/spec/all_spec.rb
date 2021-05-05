RSpec.describe 'all test' do
  it 'test all zeroes' do
    numbers = [0, 0, 0, 0, 0, 0, 0]
    all_zeros = numbers.all? do |number|
      number.zero?
    end
    expect(all_zeros).to eq(true)
  end

  it 'not all zeroes' do
    numbers = [0, 0, 0, 0, 1, 0, 0, 0]
    all_zeros = numbers.all? do |number|
      number.zero?
    end
    expect(all_zeros).to eq(false)
  end

  it 'all gone' do
    words = ["gone", "gone", "gone", "gone", "gone", "gone", "gone"]
    all_gone = words.all? do |word|
      word == "gone"
    end
    expect(all_gone).to eq(true)
  end

  xit 'not all gone' do
    words = ["gone", "gone", "gone", "gone", "gone", "there", "gone", "gone"]
    # Your code goes here
    expect(all_gone).to eq(false)
  end

  xit 'all empty' do
    strings = ["", "", "", "", "", "", ""]
    # Your code goes here
    expect(all_empty).to eq(true)
  end

  xit 'not all empty' do
    strings = ["", "", "", "full", "", "", ""]
    # Your code goes here
    expect(all_empty).to eq(false)
  end

  xit 'not all uppercase' do
    words = ["DOUGHNUT", "CASH", "MAIN", "bOWl", "SMACK", "SAND"]
    # Your code goes here
    expect(all_uppercase).to eq(false)
  end

  xit 'all lies' do
    lies = [false, false, false, false]
    # Your code goes here
    expect(all_lies).to eq(true)
  end

  xit 'multiples of 7' do
    numbers = [42, 14, 35, 49, 28, 56, 21, 7]
    # Your code goes here
    expect(all_multiples_of_7).to eq(true)
  end

  xit 'not all three digits long' do
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
