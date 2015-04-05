require "rspec"
require_relative '../app/item'
require_relative '../app/virtual_item'

describe Item do
  
  it "calculates price according to a special formula" do
    item = Item.new("twix", price: 200)
    #item.price.should == 232
    #should is deprecated now, use expect syntax instead
    expect(item.price).to eq 232
  end
end
