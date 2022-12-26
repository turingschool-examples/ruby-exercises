class Direwolf
    attr_reader :name,
								:home,
								:size,
								:starks_to_protect,
								:location

    def initialize(name, home = 'Beyond the Wall', size = 'Massive')
        @name = name
				@home = home
				@size = size
				@starks_to_protect = []
				@location = home
				@hunts_white_walkers = true
    end

		def protects(a_stark)
			if a_stark.location == @location && @starks_to_protect.length < 2
					@starks_to_protect << a_stark 
					a_stark.safe = true
					@hunts_white_walkers = false
			end
		end

		def hunts_white_walkers?
			@hunts_white_walkers
		end

		def leaves(a_stark)
			a_stark.safe = false
			@starks_to_protect.delete(a_stark)
		end

end

class Stark
	attr_reader :name, 
							:home,
							:location,
							:house_words

	attr_accessor :safe

	def initialize(name, location = 'Winterfell')
		@name = name
		@home = "Winderfell"
		@location = location 
		@safe = false
		@house_words = 'Winter is Coming'
	end

	def safe?
		@safe
	end

end