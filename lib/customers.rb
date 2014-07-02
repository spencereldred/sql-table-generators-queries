require 'faker'
class Customers
  # CREATE TABLE customers (id SERIAL PRIMARY KEY, name TEXT, email TEXT, address TEXT, city TEXT, state TEXT, zipcode TEXT);
  def initialize

  end

  def read_file(file)
    my_file = ""
    File.open(file,'r') do |f|
      f.each_line {|line| my_file += line}
    end
    my_file
  end

  def create
    result = []
    12.times do
      result << "INSERT INTO customers (name, email, address, city, state, zipcode) VALUES ('#{Faker::Name.name}','#{Faker::Internet.email}','#{Faker::Address.street_address}', '#{Faker::Address.city}', '#{Faker::Address.state}', '#{Faker::Address.zip}');"
    end
    puts result
    result
  end

end