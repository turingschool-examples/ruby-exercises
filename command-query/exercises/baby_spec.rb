require 'rspec'
require_relative 'baby'

RSpec.describe Baby do
  it 'is tired' do
    baby = Baby.new

    expect(baby.tired?).to be true
  end

  it 'is not tired after a nap' do
    baby = Baby.new

    baby.nap

    expect(baby.tired?).to be false
  end
end
