gem 'minitest' '~>5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/dragon'

describe Dragon do

  let(:dragon_1) { Dragon.new("Ramoth", :gold, "Lessa") }
  let(:dragon_2) { Dragon.new("Mnementh", :bronze, "F'lar") }

  describe "naming dragons" do
    it "has a name" do
      dragon_1.name.must_equal "Ramoth"
    end
    it "could have a different name" do
      skip
      dragon_2.name.must_equal "Mnementh"
    end
  end

  describe "color of dragons" do
    it "has a color" do
      skip
      dragon_1.color.must_equal :gold
    end
    it "could have a different color" do
      skip
      dragon_2.color.must_equal :bronze
    end
  end

  describe "dragons' riders" do
    it "has a rider" do
      skip
      dragon_1.rider.must_equal "Lessa"
    end
    it "could have a different rider" do
      skip
      dragon_2.rider.must_equal "F'lar"
    end
  end

  describe "dragons need to eat" do
    it "is born hungry" do
      skip
      dragon_1.must_be :hungry?
    end
    it "eats a lot" do
      skip
      dragon_1.must_be :hungry?
      dragon_1.eat
      dragon_1.must_be :hungry?
      dragon_1.eat
      dragon_1.must_be :hungry?
      dragon_1.eat
      dragon_1.wont_be :hungry?
    end
  end

end
