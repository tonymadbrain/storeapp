class Order
	attr_reader :items

	include ItemContainer

	def initialize
		@items = []
	end

	def place
		#actualy place code
	end
end