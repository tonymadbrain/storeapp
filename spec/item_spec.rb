require "rspec"
require_relative '../app/item'
require_relative '../app/virtual_item'

describe Item do

  before(:each) do
    @item = Item.new("twix", price: 200)
  end
  
  before(:all) do
  end

  after(:each) do
  end

  after(:all) do
  end

  it "calculates price according to a special formula" do
    expect(@item.price).to eq 232
    @item.price = 300
  end

  it "returns inof about an object" do
    expect(@item.to_s).to eq "twix:232.0"
  end
end
