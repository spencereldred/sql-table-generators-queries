class Orders
  # CREATE TABLE orders (id SERIAL PRIMARY KEY, customer_id INTEGER, amount NUMERIC);
  def initialize
  end

  def create
    result = []
    50.times do
      result << "INSERT INTO orders (customer_id, amount) VALUES (#{rand(10) + 1}, #{rand(10000)/100.0});"
    end
    puts result
    result
  end
end