class Centaur
	attr_reader :name,
							:breed

  def initialize(name, breed)
		@name = name
		@breed = breed
		@cranky = false
		@standing = true
		@runs = 0 
		@shots = 0
		@sick = 0
  end

	def shoot
		if @shots < 3 && @standing
			@shots += 1
			'Twang!!!'
		else
			'NO!'
		end
	end

	def run
		if @standing
			@runs +=1
			'Clop clop clop clop!'
		else
			'NO!'
		end
	end

	def cranky?
		check_if_cranky
		@cranky 
	end

	def check_if_cranky
		if @runs + @shots >= 3
			@cranky = true
		else
			@cranky = false
		end
	end

	def standing?
		@standing
	end

	def sleep
		if @standing 
			'NO!'
		else
			@shots = 0
			@runs = 0
		end
	end

	def lay_down
		@standing = false
	end

	def laying?
		!@standing 
	end

	def stand_up
		@standing = true
	end

	def drink_potion
		if @standing && @cranky == false
			@sick = true
		elsif @standing && @cranky == true
			@shots = 0
			@runs = 0
		end
	end

	def sick?
		@sick
	end
end