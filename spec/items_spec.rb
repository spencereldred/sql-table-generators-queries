require 'rspec'

describe Items do
  it "should have 30 items" do
    expect(Items.new.create.length).to eq(9)
  end

  it "should have first item" do
    expect(Items.new.create[0]).to eq("INSERT INTO items (order_id, name, description) VALUES (12, 'skiis', 'cross country');")
  end
end