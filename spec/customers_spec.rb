require 'rspec'

describe Customers do
  it "should create 5 customers" do
    customer = Customers.new
    expect(customer.create.length).to eq(12)
  end

  it "should have first customer" do
    expect(Customers.new.create[0]).to eq("INSERT INTO customers (name, email, address, city, state, zipcode) VALUES ('Isai Vandervort','annamarie_mohr@langspinka.name','262 Ernser Radial', 'Cathrynfort', 'Utah', '71622-8149');")
  end
end