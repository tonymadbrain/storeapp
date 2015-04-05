require "rspec"
require_relative '../app/item'
require_relative '../app/virtual_item'
require_relative '../app/antique_item'
require_relative '../app/item_container'
require_relative '../app/cart'

describe Cart do
  
  describe "managing items" do
    it "adds items into the cart" do
      cart = Cart.new("anton")
      item1 = Item.new("twix", price: 100)
      item2 = Item.new("mars", price: 200)
      cart.add_items(item1, item2)
      expect(cart.items).to include(item1, item2)
    end

    it "remove items from itself"  
  end

  it "counts items in itself" do
    skip
  end
  it "place order using all the items that were added into the cart"
  it "clears itself off the items after an order is placed"
end