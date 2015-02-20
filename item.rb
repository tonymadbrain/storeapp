class Item

	@@discount = 0.1
	
	def self.discount
		if Time.now.month == 2
			return @@discount + 0.2
		else
			return @@discount
		end
	end

	def initialize(options={})
		@price  = options[:price]
		@name   = options[:name]
	end

	attr_reader :price, :name
	attr_writer :price

	def info
		yield(price)
		yield(name)
	end

	def price
		@price - @price*self.class.discount
	end

end

