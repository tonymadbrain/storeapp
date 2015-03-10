require_relative "string"
require_relative "item_container"
require_relative "item"
require_relative "virtual_item"
require_relative "real_item"
require_relative "antique_item"
require_relative "cart"
require_relative "order"

@items = []
@items << AntiqueItem.new("car", price:101, weight:100)
@items << RealItem.new(weight:100, price:101, name:"kettle")
@items << RealItem.new(weight:100, price:101, name:"dish")

cart = Cart.new("roman")
cart.add_item RealItem.new(weight:100, price:101, name:"car")
cart.add_item RealItem.new(weight:100, price:150, name:"car")
cart.add_item RealItem.new(weight:100, price:120, name:"kettle")

puts @items[0].kind_of?(Item) 		# является ли конкретный объект, на котором вызван этот метод, экземпляром конкретного класса
puts @items[0].class == AntiqueItem # выдает класс объекта
puts @items[0].respond_to?(:info) 	# существует ли конкретный публичный метод
puts @items[0].send(:tax)			# вызывает конкретный метод на объекте, даже приватный, можно использовать для передачи метода в переменной