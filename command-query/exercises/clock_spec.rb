require 'rspec'
require_relative 'clock'

RSpec.describe Clock do
  it 'starts at 6' do
    clock = Clock.new
    expect(clock.time).to eq(6)
  end

  it 'measures the passage of time' do
    clock = Clock.new
    clock.wait
    expect(clock.time).to eq(7)

    3.times { clock.wait }
    expect(clock.time).to eq(10)
  end

  it 'is not in military time' do
    clock = Clock.new

    8.times { clock.wait }
    expect(clock.time).to eq(2)
  end
end
