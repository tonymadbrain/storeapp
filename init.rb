require_relative "item_container"
require_relative "cart"
require_relative "order"
require_relative "item"
require_relative "virtual_item"
require_relative "real_item"

@items = []
@items << VirtualItem.new({price:101, weight:100, name:"car"})
@items << RealItem.new({weight:100, price:101, name:"kettle"})
@items << RealItem.new({weight:100, price:101, name:"dish"})