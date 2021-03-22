require 'rspec'
require_relative 'apple'

RSpec.describe Apple do
  it 'is not ripe when created' do
    apple = Apple.new

    expect(apple.ripe?).to be false
  end

  it 'is not ripe until it is three weeks old' do
    apple = Apple.new

    2.times { apple.wait_a_week }
    expect(apple.ripe?).to be false

    1.times { apple.wait_a_week }
    expect(apple.ripe?).to be true
  end
end

