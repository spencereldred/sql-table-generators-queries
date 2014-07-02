class Orderitems
  # CREATE TABLE orderitems (id SERIAL PRIMARY KEY, order_id INTEGER, item_id INTEGER);
  def initialze
  end

  def create
    result = []
    order_num = 1
    index = 0
    200.times do
      result << "INSERT INTO orderitems (order_id, item_id) VALUES ('#{order_num}', '#{rand(9)+1}');"
      index += 1
      if index % 4 == 0
        order_num += 1
      end
    end
    puts result.uniq!
    result
  end
end