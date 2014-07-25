gem 'minitest', '~>5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/unicorn'

describe Unicorn do
  before do
    @unicorn = Unicorn.new("Robert")
  end

  describe "the naming of a unicorn" do
    it "has a name" do
      @unicorn.name.must_equal "Robert"
    end
  end

  describe "the color of a unicorn" do
    it "is white be default" do
      skip
      @unicorn.must_be :white?
    end
    it "does not have to be white" do
      skip
      unicorn = Unicorn.new("Barbara", "purple")
      unicorn.color.must_equal "purple"
      unicorn.white?.must_equal false
      unicorn.wont_be :white?
    end
  end

  describe "the speech of a unicorn" do
    it "says sparkly stuff" do
      skip
      @unicorn.say("Wonderful!").must_equal "**;* Wonderful! **;*"
      @unicorn.say("I don't like you very much.").must_equal "**;* I don't like you very much. **;*"
    end
  end

end
      
