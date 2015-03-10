require_relative 'store_application'

StoreApplication.config do |app|

	app.name 		= "My Store"
	app.enviropment = :production

	app.admin do |admin|
		admin.email = "admin@mystore.com"
		admin.login = "admin"
		admin.send_info_emails_on :mondays
	end
end

p StoreApplication.enviropment
p StoreApplication.name
p StoreApplication::Admin.email
p StoreApplication::Admin.login

@items = []
@items << AntiqueItem.new("car", price:101, weight:100)
@items << RealItem.new(weight:100, price:101, name:"kettle")
@items << RealItem.new(weight:100, price:101, name:"dish")

cart = Cart.new("roman")
cart.add_item RealItem.new(weight:100, price:101, name:"car")
cart.add_item RealItem.new(weight:100, price:150, name:"car")
cart.add_item RealItem.new(weight:100, price:120, name:"kettle")

#puts @items[0].kind_of?(Item) 		# является ли конкретный объект, на котором вызван этот метод, экземпляром конкретного класса
#puts @items[0].class == AntiqueItem # выдает класс объекта
#puts @items[0].respond_to?(:info) 	# существует ли конкретный публичный метод
#puts @items[0].send(:tax)			# вызывает конкретный метод на объекте, даже приватный, можно использовать для передачи метода в переменной
