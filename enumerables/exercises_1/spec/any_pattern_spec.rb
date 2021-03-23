RSpec.describe 'Any Pattern Test' do

  it 'has at least one zero' do
    numbers = [2, 0, 9, 3, 0, 1]
    has_zero = false
    numbers.each do |number|
      has_zero = true if number.zero?
    end
    expect(has_zero).to eq(true)
  end

  xit 'does not have any zeros' do
    numbers = [3, 1, 3, 2, 4, 9, 8]
    has_zero = false
    numbers.each do |number|
      # Your code goes here
    end
    expect(has_zero).to eq(false)
  end

  xit 'has at least one alice' do
    names = ["Bill", "Bob", "Burton", "Alice", "Brandon"]
    has_alice = false
    # Your code goes here
    expect(has_alice).to eq(true)
  end

  xit 'no alices' do
    names = ["Chuck", "Charlene", "Cory", "Chris", "Carl"]
    # Your code goes here
    expect(has_alice).to eq(false)
  end

  xit 'has a multi word phrase' do
    phrases = ["Sure!", "OK.", "I have no idea.", "Really?Whatever."]
    # Your code goes here
    expect(has_multi_word_phrase).to eq(true)
  end

  xit 'has no monkeys' do
    animals = ["elephant", "hippo", "jaguar", "python"]
    # Your code goes here
    expect(has_monkeys).to eq(false)
  end

  xit 'has no multiples of five' do
    numbers = [3, 1, 3, 2, 4, 9, 8]
    # Your code goes here
    expect(multiples_of_5).to eq(false)
  end
end

