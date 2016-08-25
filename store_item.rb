require './item.rb'
require './food.rb'


item_1 = StoreFront::Item.new({name: "pen", price: 5, color: "black"})
puts item_1.info

food_1 = StoreFront::Food.new({name: "banana", price: 5, color: "black", shelf_life: "10_days"})
p food_1

