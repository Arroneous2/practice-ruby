# item1 = {name: "Lego Ferrari" ,color: "red", size: "large", price: 300 }
# item2 = {name: "Hot wheels tesla", color: "blue", size: "small", price: 10}
# item3 = {name: "Ken doll", color: "tan", size: "medium", price: 25}
# 
# p "#{item1[:name]} is the hot new toy which is #{item1[:color]} and #{item1[:size]} at the low low price of $#{item1[:price]}"
# p "#{item3[:name]} is the hot new toy which is #{item3[:color]} and #{item3[:size]} at the low low price of $#{item3[:price]}"
# p "#{item2[:name]} is the hot new toy which is #{item2[:color]} and #{item2[:size]} at the low low price of $#{item2[:price]}"

class Item
  attr_reader :name, :color, :size, :price
  attr_writer :price

  def initialize(input_name, input_color, input_size, input_price)
    @name = input_name
    @color = input_color
    @size = input_size
    @price = input_price
  end

  def sales_pitch()
    p "#{name} is the hot new toy which is #{color} and #{size} at the low low price of #{price}"
  end

  def fire_sale()
    @price = @price * 0.5
  end

end

item1 = Item.new("Hot Wheels", "yellow", "small", 10)

p item1
item1.sales_pitch
p item1.price
item1.price = 15
p item1.price
item1.sales_pitch
item1.fire_sale
p item1.price