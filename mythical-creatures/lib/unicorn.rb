class Unicorn
  attr_reader :name, 
              :color,
              :pockets
            

  def initialize(name, color = "silver")
    @name = name
    @color = color
    @pockets = []
  end

  # def pockets
  #   pockets = []
  # end

	def silver? 
		@color == "silver"
	end

	def say(text)
		"**;* #{text} **;*"
	end
end
