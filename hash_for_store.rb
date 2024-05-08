# item1 = {name: "Lego Ferrari" ,color: "red", size: "large", price: 300 }
# item2 = {name: "Hot wheels tesla", color: "blue", size: "small", price: 10}
# item3 = {name: "Ken doll", color: "tan", size: "medium", price: 25}
# 
# p "#{item1[:name]} is the hot new toy which is #{item1[:color]} and #{item1[:size]} at the low low price of $#{item1[:price]}"
# p "#{item3[:name]} is the hot new toy which is #{item3[:color]} and #{item3[:size]} at the low low price of $#{item3[:price]}"
# p "#{item2[:name]} is the hot new toy which is #{item2[:color]} and #{item2[:size]} at the low low price of $#{item2[:price]}"

class Item
  attr_reader :name, :color, :size, :price, :stock
  attr_writer :price

  def initialize(input)
    @name = input[:name]
    @color = input[:color]
    @size = input[:size]
    @price = input[:price]
    @stock = input[:stock]
  end

  def sales_pitch()
    p "#{name} is the hot new toy which is #{color} and #{size} at the low low price of #{price}"
  end

  def fire_sale(percent_off)
    @price = @price - @price * percent_off/100
  end

  def enough_stock(threshold_stock)
    if threshold_stock > @stock
      p "We need to restock"
    else
      p "We're good to go"
    end
  end
end

class Store
  attr_reader :item, :current_shift_employees, :items_arry
  attr_writer :item, :current_shift_employees,  

  def initialize(input)
    @items_arry = []
    @item = input[:item]
    @current_shift_employees = input[:current_shift_employees] 
  end
end



item1 = Item.new({name: "Hot Wheels", color: "yellow", size: "small", price: 10, stock: 100})
current_shift_employees1 = []

store1 = Store.new({item: item1, current_shift_employees: current_shift_employees1})
p store1


