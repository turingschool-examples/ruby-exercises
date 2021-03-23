require "./lib/escape_characters"

RSpec.describe EscapeCharacters do

  it 'can add quotation marks' do
    ec = EscapeCharacters.new

    result = ec.quote("These aren't the droids you're looking for.")
    expected = "\"These aren't the droids you're looking for.\""

    expect(result).to eq(expected)
  end

  it 'can add quotation marks to something else' do
    ec = EscapeCharacters.new

    result = ec.quote("By Horace's Beard!")
    expected = "\"By Horace's Beard!\""

    expect(result).to eq(expected)
  end
end
