# item1 = {name: "Lego Ferrari" ,color: "red", size: "large", price: 300 }
# item2 = {name: "Hot wheels tesla", color: "blue", size: "small", price: 10}
# item3 = {name: "Ken doll", color: "tan", size: "medium", price: 25}
# 
# p "#{item1[:name]} is the hot new toy which is #{item1[:color]} and #{item1[:size]} at the low low price of $#{item1[:price]}"
# p "#{item3[:name]} is the hot new toy which is #{item3[:color]} and #{item3[:size]} at the low low price of $#{item3[:price]}"
# p "#{item2[:name]} is the hot new toy which is #{item2[:color]} and #{item2[:size]} at the low low price of $#{item2[:price]}"

class Item
  attr_reader :name, :color, :size, :price, :stock
  attr_writer :name, :color, :size, :price, :stock

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

class Employee
  attr_reader :first_name, :last_name, :salary, :employed
  attr_writer :first_name, :last_name, :salary, :employed

  def initialize(input)
    @first_name = input[:first_name]
    @last_name = input[:last_name]
    @salary = input[:salary]
    @employed = input[:employed]
  end

  def print_info()
    p "#{@first_name} #{@last_name} makes $#{@salary} per year."
  end

  def get_full_name()
    return "#{@first_name} #{@last_name}"
  end

end

class Manager < Employee

  def send_report()
    p "Blah blah blah"
  end
end

class Store
  attr_reader :current_shift_employees, :inventory

  def initialize(input)
    @cash = input[:cash]
    @inventory = {input[:item].name => input[:item]}
    @current_shift_employees = {input[:current_shift_employee].get_full_name => input[:current_shift_employee]} 
  end

  def get_current_shift_names() 
    return @current_shift_employees.keys()
  end

  def add_current_shift_employee(current_shift_employee)
    @current_shift_employees[current_shift_employee.get_full_name] = current_shift_employee
  end

  def get_inventory_names()
    return @inventory.keys()
  end
  
  def add_item(item)
    @inventory[item.name] = item
  end

  def get_inventory_value()
    inventory_value = 0
    inventory_hash_keys = @inventory.keys()
    inventory_hash_keys.each {|item_hash_key|
      inventory_value += @inventory[item_hash_key].price * @inventory[item_hash_key].stock
    }
    return inventory_value
  end

  def purchase_item()
    p "What is it you'd like to purchase for the list of goods below?"
    p self.get_inventory_names
    desired_item = gets.chomp

    #see if the item exists
    while !@inventory.has_key?(desired_item)
      p "Sorry that doesn't exists please enter again"
      desired_item = gets.chomp
    end

    p "Ok the cost of #{desired_item} is $#{@inventory[desired_item].price}."
    p "Please take your #{desired_item}"

    @inventory[desired_item].stock= @inventory[desired_item].stock - 1
  end

  

end

item1 = Item.new({name: "Hot Wheels", color: "red", size: "small", price: 10, stock: 100})
item2 = Item.new({name: "Tonka Truck", color: "yellow", size: "medium", price: 40, stock: 50})


employee1 = Employee.new(first_name: "Aaron", last_name: "Riggs", salary: 90000, employed: true)
employee2 = Employee.new(first_name: "Bob", last_name: "Billy", salary: 80000, employed: false)


store1 = Store.new({item: item1, current_shift_employee: employee1, cash: 1000})
store1.add_current_shift_employee(employee2)
store1.add_item(item2)
store1.purchase_item()
p store1.inventory["Hot Wheels"]


