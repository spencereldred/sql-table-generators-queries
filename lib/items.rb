class Items
  # CREATE TABLE items (id SERIAL PRIMARY KEY, name TEXT, description TEXT);
  def initialize
    @items = [
      {'ski01'  => 'downhill ski'},
      {'ski02'  => 'cross country ski'},
      {'ski03'  => 'snow board'},
      {'bike01' => 'mountain bike'},
      {'bike02' => 'road bike'},
      {'bike03' => 'tricycle'},
      {'boot01' => 'hiking boots'},
      {'boot02' => 'ski boots'},
      {'boot03' => 'moon boots'}
    ]
  end

  def create
    result = []
    item = {}
    @items.each do |item|
      result << "INSERT INTO items (name, description) VALUES ('#{item.keys[0]}', '#{item.values[0]}');"
    end
    puts result
    result
  end

end