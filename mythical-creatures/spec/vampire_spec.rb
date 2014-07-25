gem 'minitest' '~>5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/vampire'

describe Vampire do
  before do
    @vampire = Vampire.new("Dracula")
  end

  describe "naming vampires" do
    it "has a name" do
      @vampire.name.must_equal "Dracula"
    end
    it "can be given a different name" do
      skip
      vampire = Vampire.new("Vladimir")
      vampire.name.must_equal "Vladimir"
    end
  end

  describe "vampires have pets" do
    it "has a pet bat by default" do
      skip
      @vampire.pet.must_equal "bat"
    end
    it "can have other pets" do
      skip
      vampire = Vampire.new("Varney", "fox")
      vampire.pet.must_equal "fox"
    end
  end

  describe "vampires have a thirst" do
    it "is thirsty by default" do
      skip
      @vampire.must_be :thirsty? 
    end
    it "is not thirsty after drinking" do
      skip
      @vampire.drink
      @vampire.wont_be :thirsty?
    end
  end

end
