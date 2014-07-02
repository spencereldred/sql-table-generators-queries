require 'rspec'

describe Orderitems do
  it "should have 30 items" do
    expect(Orderitems.new.create.length).to eq(200)
  end

  it "should have first item" do
    skip
    expect(Orderitems.new.create[0]).to eq("INSERT INTO items (order_id, name, description) VALUES (12, 'skiis', 'cross country');")
  end
end