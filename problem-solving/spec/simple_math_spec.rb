require "./lib/simple_math"

RSpec.describe SimpleMath do

  it 'can add two numbers' do
    sm = SimpleMath.new

    result = sm.add(2,2)
    expected = 4

    expect(result).to eq(expected)
  end

  it 'can add two different numbers' do
    sm = SimpleMath.new

    result = sm.add(5,3)
    expected = 8

    expect(result).to eq(expected)
  end

  it 'can subtract two numbers' do
    sm = SimpleMath.new

    result = sm.subtract(10,2)
    expected = 8

    expect(result).to eq(expected)
  end

  it 'can subtract two other numbers' do
    sm = SimpleMath.new

    result = sm.subtract(50,27)
    expected = 23

    expect(result).to eq(expected)
  end

  it 'can multiply two numbers' do

    # instantiate the class
    #
    # call the method being tested
    # determine your expected result
    #
    # check results
  end


  it 'can multiply two other numbers' do

    # instantiate the class
    #
    # call the method being tested
    # determine your expected result
    #
    # check results
  end

  it 'can divide two numbers' do
    # your code goes here
  end

  it 'can divide two other numbers' do
    # # your code goes here
  end
end
