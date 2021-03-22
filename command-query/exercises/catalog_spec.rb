require 'rspec'
require_relative 'product'
require_relative 'catalog'

RSpec.describe Catalog do
  it 'starts with no products' do
    catalog = Catalog.new
    expect(catalog.cheapest).to be_nil
  end

  it 'has a cheapest of one' do
    catalog = Catalog.new
    catalog << Product.new('scissors', 8)
    expect(catalog.cheapest).to eq('scissors')
  end

  it 'has a cheapest product' do
    catalog = Catalog.new
    catalog << Product.new('cupcake', 3)
    catalog << Product.new('shirt', 23)
    catalog << Product.new('button', 1)

    expect(catalog.cheapest).to eq('button')
  end
end
