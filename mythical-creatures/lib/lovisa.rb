class Lovisa
  attr_reader :title,
              :characteristics

  def initialize(title, characteristics = ["brilliant"])
    @title = title
    @characteristics = characteristics
  end

  def brilliant?
	  characteristics.include?("brilliant")
  end

	def kind?
	  characteristics.include?("kind")
  end

	def say(words)
		"**;* #{words} **;*"
	end
end