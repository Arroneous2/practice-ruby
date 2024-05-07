# item1 = {name: "Lego Ferrari" ,color: "red", size: "large", price: 300 }
# item2 = {name: "Hot wheels tesla", color: "blue", size: "small", price: 10}
# item3 = {name: "Ken doll", color: "tan", size: "medium", price: 25}
# 
# p "#{item1[:name]} is the hot new toy which is #{item1[:color]} and #{item1[:size]} at the low low price of $#{item1[:price]}"
# p "#{item3[:name]} is the hot new toy which is #{item3[:color]} and #{item3[:size]} at the low low price of $#{item3[:price]}"
# p "#{item2[:name]} is the hot new toy which is #{item2[:color]} and #{item2[:size]} at the low low price of $#{item2[:price]}"

class Item
  attr_reader :name, :color, :size, :price
  attr_writer :name, :color, :size, :price

  def initialize(name, color, size, price)
    @name = name
    @color = color
    @size = size
    @price = price
  end

  def sales_pitch()
    p "#{@name} is the hot new toy which is #{@color} and #{@size} at the low low price of #{@price}"
  end
end

item1 = Item.new("name", "color", "size", 10)

p item1
item1.sales_pitch
p item1.name
item1.name = "test"
p item1.name
item1.sales_pitch