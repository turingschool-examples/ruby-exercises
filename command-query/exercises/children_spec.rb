require 'rspec'
require_relative 'child'
require_relative 'children'

RSpec.describe Children do
  it 'has no eldest' do
    children = Children.new

    expect(children.eldest).to be_nil
  end

  it 'has one eldest' do
    children = Children.new
    children << Child.new('Sarah', 5)

    expect(children.eldest.name).to eq('Sarah')
  end

  it 'gets the eldest of several' do
    children = Children.new
    children << Child.new('Robert', 2)
    children << Child.new('Fran', 8)
    children << Child.new('Hilbert', 4)
    expect(children.eldest.name).to eq('Fran')
  end
end
