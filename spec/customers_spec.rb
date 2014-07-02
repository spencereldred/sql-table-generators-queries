require 'rspec'

describe Customers do
  it "should create 5 customers" do
    expect(Customer.new.create.length).to eq(5)
  end

  it "should have first customer" do
    expect(Customer.new.create[0]).to eq("INSERT INTO customers (name, email) VALUES ('Spencer', 'spencer@galvanize.it');")
  end
end