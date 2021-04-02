require 'rspec'
require_relative '../lib/dog'

RSpec.describe Dog do
  it 'exists' do
    doug = Dog.new("Doug", "Golden Retriever")

    expect(dog).to be_an_instance_of(Dog)
  end

  it 'has a greeting' do
    doug = Dog.new("Doug", "Golden Retriever")

    expect(dog.greeting).to eq("Woof, I'm Doug the Golden Retriever!")
  end

  it 'can have a different greeting' do
    dolly = Dog.new("Dolly", "Lab")

    expect(dog.greeting).to eq("Woof, I'm Dolly the Lab!")
  end
end
