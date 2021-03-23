RSpec.describe 'character count' do

  it 'can count a small word' do
    cc = CharacterCount.new

    result = cc.count("test")
    expected = 4

    expect(result).to eq(expected)
  end

  it 'can count another word' do
    cc = CharacterCount.new

    result = cc.count("pterodactyl")
    expected = 11

    expect(result).to eq(expected)
  end

  it 'can count spaces' do
    cc = CharacterCount.new

    result = cc.count(" ")
    expected = 1

    expect(result).to eq(expected)
  end

  it 'can handle sentences' do
    cc = CharacterCount.new

    result = cc.count("hello world")
    expected = 11

    expect(result).to eq(expected)
  end
end
