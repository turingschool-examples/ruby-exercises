RSpec.describe 'find pattern' do

  it 'finds first seven letter word' do
    words = ["capricious", "berry", "unicorn", "bag", "apple", "festering", "pretzel", "pencil"]
    found = nil
    words.each do |word|
      if word.length == 7
        found = word
        break
      end
    end
    expect(found).to eq("unicorn")
  end

 it 'no waldo' do
    words = ["scarf", "sandcastle", "flag", "pretzel", "crow", "key"]
    found = nil
    words.each do |word|
      if word == "waldo"
        found = word
      end
    end
    expect(found).to eq(nil)
  end

  it 'found waldo' do
    words = ["noise", "dog", "fair", "house", "waldo", "bucket", "fish"]
    found = nil
    words.each do |word|
      if word == "waldo"
        found = word
      end
    end
    expect(found).to eq("waldo")
  end

  it 'no three letter words' do
    words = ["piglet", "porridge", "bear", "blueberry"]
    found = nil

    words.each do |word|
      if word.length == 3
        found = word
      end
    end

    expect(found).to eq(nil)
  end

  it 'finds 13' do
    numbers = [2, 13, 19, 8, 3, 27]
    found = nil

    numbers.each do |num|
      if num == 13
        found = num
      end
    end

    expect(found).to eq(13)
  end

  it 'first even number' do
    numbers = [3, 7, 13, 11, 10, 2, 17]
    found = nil

    numbers.each do |num|
      if num.even? == true
        found = num
        break
      end
    end

    expect(found).to eq(10)
  end

  it 'first multiple of 3' do
    numbers = [2, 8, 9, 27, 24, 5]
    found = nil

    numbers.each do |num|
      if num % 3 == 0
        found = num
        break
      end
    end

    expect(found).to eq(9)
  end

  it 'first word starting with q' do
    words = ["weirdo", "quill", "fast", "quaint", "quitter", "koala"]
    found = nil

    words.each do |word|
      if word.start_with?("q")
        found = word
        break
      end
    end

    expect(found).to eq("quill")
  end

  it 'first word ending with er' do
    words = ["biggest", "pour", "blight", "finger", "pie", "border"]
    found = nil

    words.each do |word|
      if word.end_with?("er")
        found = word
        break
      end
    end

    expect(found).to eq("finger")
  end

  it 'first number greater than 20' do
    numbers = [1, 8, 19, 21, 29, 31, 34]
    found = nil

    numbers.each do |num|
      if num > 20
        found = num
        break
      end
    end
    
    expect(found).to eq(21)
  end
end
