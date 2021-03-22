require 'rspec'
require_relative 'light'

RSpec.describe Light do
  it 'is off' do
    light = Light.new

    expect(light.on?).to be false
  end

  it 'can be turned on' do
    light = Light.new

    light.turn_on

    expect(light.on?).to be true
  end
end
