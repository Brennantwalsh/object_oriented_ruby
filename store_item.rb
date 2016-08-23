# item_1 = {name: "pen", price: 5, color: "black"}
# item_1 = {name: "pencil", price: 7, color: "yellow"}
# item_1 = {"name" => "eraser", :price => 10, :color => "blue"}

class Item
  def initialize(hash)
    @name = hash[:name]
    @price = hash[:price]
    @color = hash[:color]
  end

  def name
    @name
  end

  def price
    @price
  end

  def color
    @color
  end

  def info 
    "The #{@name} costs $#{@price} and is #{@color}."
  end
end

item_1 = Item.new({name: "pen", price: 5, color: "black"})
puts item_1.info

