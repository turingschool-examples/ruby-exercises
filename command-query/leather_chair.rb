class LeatherChair
	def initialize(faded = false, exposure = 0)
		@faded = faded
		@exposure = exposure
	end

	def faded?
		if @exposure  == 0
			@faded = false
		else
			@faded = true
		end
	end

	def expose_to_sunlight
		@exposure += 1
	end
end