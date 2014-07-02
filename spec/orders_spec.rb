require 'rspec'

describe Orders do
  it 'should have 100 orders' do
    expect(Orders.new.create.length).to eq(50)
  end

  it "should have first item" do
    expect(Orders.new.create[0]).to eq("INSERT INTO orders (customer_id, order_number, description, amount) VALUES (5, 15, 'sporting goods, 12.75);")
  end
end