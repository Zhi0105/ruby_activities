# Ruby program of Polymorphism using inheritance
class Vehicle
    def tyre_type
        puts "Heavy Car"
    end
end
   

class Car < Vehicle
    def tyre_type
        puts "Small Car"
    end
end
   
class Truck < Vehicle
    def tyre_type
        puts "Big Car"
    end
end
  

vehicle = Vehicle.new
vehicle.tyre_type()
   
vehicle = Car.new
vehicle.tyre_type()

   
vehicle = Truck.new
vehicle.tyre_type()
