RSpec.describe 'none pattern' do

  it 'none are broken' do
    things = ["functional", "working", "works", "fixed", "good"]
    none_broken = true
    things.each do |thing|
      none_broken = false if thing == "broken"
    end
    expect(none_broken).to eq(true)
  end

  xit 'double negative' do
    numbers = [9, 3, 3, 7, 6, -5, 1]
    not_none_negative = true
    numbers.each do |number|
      # Your code goes here
    end
    expect(not_none_negative).to eq(false)
  end

  xit 'none are negative' do
    numbers = [9, 3, 1, 8, 3, 3, 5]
    none_negative = true
    # Your code goes here
    expect(none_negative).to eq(true)
  end

  xit 'none shall pass' do
    critters = ["elf", "hobbit", "dwarf", "wizard", "human"]
    # Your code goes here
    expect(none_shall_pass).to eq(true)
  end

  xit 'one or more shall pass' do
    phrases = ["go", "left", "can cross", "shall pass", "must stay", "tarried"]
    # Your code goes here
    expect(none_shall_pass).to eq(false)
  end

  xit 'none even' do
    numbers = [3, 9, 15, 21, 19]
    # Your code goes here
    expect(none_even).to eq(true)
  end
end
