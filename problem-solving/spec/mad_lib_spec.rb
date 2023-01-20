require "./lib/mad_lib"

RSpec.describe MadLib do

  it 'can create a new mad lib' do
    madlib = MadLib.new

    madlib.noun("dog")
    madlib.verb("walk")
    madlib.adjective("blue")
    madlib.adverb("quickly")
    result = madlib.result
    expected = "Do you walk your blue dog quickly? That's hilarious!"

    expect(result).to eq(expected)
  end

  it 'can create another mad lib' do
    madlib = MadLib.new

    madlib.noun("capybara")
    madlib.verb("pet")
    madlib.adjective("purple")
    madlib.adverb("intensely")
    result = madlib.result
    expected = "Do you pet your purple capybara intensely? That's hilarious!"

    expect(result).to eq(expected)
  end
end

