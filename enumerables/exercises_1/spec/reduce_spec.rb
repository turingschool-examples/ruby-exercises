RSpec.describe 'reduce' do

  it 'sums a list of numbers' do
    numbers = [32, 1, 21, 5, 81, 333]
    
    result = numbers.reduce(0) do |sum, number|
      sum + number
    end
    
    expect(result).to eq(473)
  end

  it 'subtracts a list of numbers' do
    numbers = [28, 12, 38, 1, 91]
    result = numbers.reduce(0) do |difference, number|
      difference - number
    end
    expect(result).to eq(-170)
  end

  it 'multiplies a list of numbers' do
    numbers = [2, 3, 5, 7]
    # initial value is 1

    result = numbers.reduce(1) do |one, number|
      one * number
    end

    expect(result).to eq(210)
  end

  it 'capitalize key words in phrase' do
    keywords = ["fish", "blue"]
    # initial value is 'one fish two fish red fish blue fish'
    result = keywords.reduce("one fish two fish red fish blue fish") do |phrase, keyword|
      phrase.gsub(keyword, keyword.upcase) 
    end 
    expect(result).to eq('one FISH two FISH red FISH BLUE FISH')
  end

  it 'divides 560 by a bunch of numbers' do
    numbers = [2, 2, 2, 5, 7]
    # initial value is 560
    result = numbers.reduce(560) do |big_numero, number|
      big_numero / number
    end
    expect(result).to eq(2)
  end

  it 'subtract smallest values from 100' do
    elements = [[8, 5, 3], [1, 9, 11], [4, 7, 2], [19, 34, 6]]
    # initial value is 100
    result = elements.reduce(100) do |start_num, smallest_num|
      start_num - smallest_num.min
    end
    expect(result).to eq(88)
  end

  it 'adds all second values together' do
    elements = [["a", 1], ["b", 9], ["c", 21]]
    # initial value is 0
    result = elements.reduce(0) do |zero, second_element|
      zero + second_element[1]
    end
    expect(result).to eq(31)
  end
end

