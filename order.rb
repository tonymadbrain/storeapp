class Order
	attr_reader :items

	include ItemContainer::Manager
	include ItemContainer::Info

	def initialize
		@items = []
	end

	def place
		#actualy place code
	end
end