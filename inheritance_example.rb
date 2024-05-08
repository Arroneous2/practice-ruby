class Wheeled_Vehicle
  def initialize
    @speed = 0
    @direction = 'north'
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Car < Wheeled_Vehicle
  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Wheeled_Vehicle
  def ring_bell
    puts "Ring ring!"
  end
end

some_wheels = Wheeled_Vehicle.new()
bike1 = Bike.new()
bike1.ring_bell
car1 = Car.new()
car1.honk_horn
p car1.ancestors
