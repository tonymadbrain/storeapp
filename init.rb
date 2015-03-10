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

unless StoreApplication.frozen?
  StoreApplication.name = "Toy store"
end

StoreApplication::Admin.email = "new@email.com"
p StoreApplication::Admin.email

@items = []
@items << AntiqueItem.new("car", price:101, weight:100)
@items << RealItem.new(weight:100, price:101, name:"kettle")
@items << RealItem.new(weight:100, price:101, name:"dish")

cart = Cart.new("roman")
cart.add_item RealItem.new(weight:100, price:101, name:"car")
cart.add_item RealItem.new(weight:100, price:150, name:"car")
cart.add_item RealItem.new(weight:100, price:120, name:"kettle")
