require 'rspec'
require_relative '../lib/costume'

RSpec.describe Costume do
  it 'has a style' do
    costume = Costume.new('Dragon')

    expect(costume.style).to eq('Dragon')
  end

  it 'has a different style of costume' do
    costume = Costume.new('Princess')

    expect(costume.style).to eq('Princess')
  end
end
