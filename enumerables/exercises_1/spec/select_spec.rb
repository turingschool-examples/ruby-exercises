RSpec.describe 'select' do

  it 'even numbers' do
    numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

    evens = numbers.select do |number|
      number.even?
    end

    expect(evens).to eq([2, 4, 6, 8, 10])
  end

  it 'odd numbers' do
    numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    
    odds = numbers.select do |number|
      number.odd?
    end
    # <.select> will only move the number IF it meets the criteria in the codeblock
    # this enumb. adds a level of functionality behind the scenes!
    # think of it like: ".select this item IF...."
    expect(odds).to eq([1, 3, 5, 7, 9])
  end

  it 'words with three letters' do
    words = ["pill", "bad", "finger", "cat", "blue", "dog", "table", "red"]
    selected = words.select do |word|
      word.length == 3
    end
    expect(selected).to eq(["bad", "cat", "dog", "red"])
  end

  it 'words with more than three letters' do
    words = ["pill", "bad", "finger", "cat", "blue", "dog", "table", "red"]
    selected = words.select do |word|
      word.length > 3
    end
    expect(selected).to eq(["pill", "finger", "blue", "table"])
  end

  it 'wordss ending in e' do
    words = ["are", "you", "strike", "thinking", "belt", "piece", "warble", "sing", "pipe"]
    selected = words.select do |word|
      word.end_with?("e")
    end
    expect(selected).to eq(["are", "strike", "piece", "warble", "pipe"])
  end

  it 'words ending in ing' do
    words = ["bring", "finger", "drought", "singing", "bingo", "purposeful"]
    selected = words.select do |word|
      word.end_with?("ing")
    end
    expect(selected).to eq(["bring", "singing"])
  end

  it 'words containing e' do
    words = ["four", "red", "five", "blue", "pizza", "purple"]
    selected = words.select do |word|
      word.include?("e")
    end
    expect(selected).to eq(["red", "five", "blue", "purple"])
  end

  it 'dinosaurs' do
    animals = ["tyrannosaurus", "narwhal", "eel", "achillesaurus", "qingxiusaurus"]
    dinosaurs = animals.select do |animal|
      animal.end_with?("saurus")
    end
    expect(dinosaurs).to eq(["tyrannosaurus", "achillesaurus", "qingxiusaurus"])
  end

  it 'floats' do
    numbers = [3, 1.4, 3.5, 2, 4.9, 9.1, 8.0]
    floats = numbers.select do |num|
      num.is_a?(Float)
    end
    expect(floats).to eq([1.4, 3.5, 4.9, 9.1, 8.0])
  end

  it 'arrays' do
    elements = ["CAT", ["dog"], 23, [56, 3, 8], "AIMLESS", 43, "butter"]
    arrays = elements.select do |element|
      element.is_a?(Array)
    end
    expect(arrays).to eq([["dog"], [56, 3, 8]])
  end

  it 'hashes' do
    elements = ["cat", {:dog=>"fido"}, 23, {:stuff=>"things"}, "aimless", 43]
    hashes = elements.select do |element|
      element.is_a?(Hash)
    end
    expect(hashes).to eq([{:dog=>"fido"}, {:stuff=>"things"}])
  end
end
