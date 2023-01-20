require 'rspec'
require_relative '../lib/groundhog'

RSpec.describe Groundhog do
  it 'exists' do
    gabby = Groundhog.new("Gabby")

    expect(gabby).to be_an_instance_of(Groundhog)
  end

  it 'has a name' do
    gabby = Groundhog.new("Gabby")

    expect(gabby.name).to eq("Gabby")
  end

  it 'can change name' do
    groundhog = Groundhog.new("Gabby")
    groundhog.name = "Gary"

    expect(groundhog.name).to eq("Gary")
  end
end
