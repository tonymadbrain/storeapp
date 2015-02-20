class Cart

	attr_reader :items

	include ItemContainer::Manager

	include ItemContainer

	def initialize
		@items = []
	end

end