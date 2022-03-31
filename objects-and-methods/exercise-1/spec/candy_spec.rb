require 'rspec'
require_relative '../lib/candy'

RSpec.describe Candy do
  it 'has a type' do
    candy = Candy.new('Skittles')

    expect(candy.type).to eq('Skittles')
  end

  it 'has a different kind of candy' do
    candy = Candy.new('Snickers')

    expect(candy.type).to eq('Snickers')
  end
end
