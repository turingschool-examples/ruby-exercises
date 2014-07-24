gem 'minitest' '~>5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/hobbit'

describe Hobbit do
  before do
    @hobbit = Hobbit.new("Bilbo")
  end

  describe "the naming of a hobbit" do
    it "has a name" do
      @hobbit.name.must_equal "Bilbo"
    end
    it "can have another name" do
      skip
      hobbit = Hobbit.new("Peregrin")
      hobbit.name.must_equal "Peregrin"
    end
  end

  describe "the disposition of a hobbit" do
    it "naturally has an unadventurous disposition" do
      skip
      @hobbit.disposition.must_equal "homebody"
    end
    it "can have a different disposition" do
      skip
      hobbit = Hobbit.new("Frodo", "adventurous")
      hobbit.disposition.must_equal "adventurous"
    end
  end
  
  describe "the life phases of a hobbit" do
    it "grows a year older on its birthday" do
      skip
      @hobbit.age.must_equal 0
      5.times do
        @hobbit.celebrate_birthday
      end
      @hobbit.age.must_equal 5
    end
    it "is considered a child at 32" do
      skip
      32.times do
        @hobbit.celebrate_birthday
      end
      @hobbit.wont_be :adult?
    end
    it "comes of age at 33" do
      skip
      33.times do
        @hobbit.celebrate_birthday
      end
      @hobbit.must_be :adult?

      # still adult, one year later
      @hobbit.celebrate_birthday
      @hobbit.must_be :adult?
    end
  end

end
