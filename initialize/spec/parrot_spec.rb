require 'rspec'
require_relative '../lib/parrot'

RSpec.describe Parrot do
  it 'exists' do
    words = ["Sugar", "Flashy", "Giant", "Whisper"]
    perry = Parrot.new({name: "Perry", known_words: words})

    expect(perry).to be_an_instance_of(Parrot)
  end

  it 'has a name' do
    words = ["Sugar", "Flashy", "Giant", "Whisper"]
    perry = Parrot.new({name: "Perry", known_words: words})

    expect(perry.name).to eq("Perry")
  end

  it 'has a sound' do
    words = ["Sugar", "Flashy", "Giant", "Whisper"]
    perry = Parrot.new({name: "Perry", known_words: words})

    expect(perry.sound).to eq('Squawk!')
  end

  it 'knows words' do
    words = ["Sugar", "Flashy", "Giant", "Whisper"]
    perry = Parrot.new({name: "Perry", known_words: words})

    expect(perry.known_words).to eq(["Sugar", "Flashy", "Giant", "Whisper"])
  end
end
