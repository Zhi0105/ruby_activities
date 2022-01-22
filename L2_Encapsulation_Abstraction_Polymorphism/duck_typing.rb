# Ruby program of polymorphism using Duck typing
class Hotel
   
    def enters
      puts "A customer enters"
    end
     
    def type(customer)
      customer.type
    end
     
    def room(customer)
      customer.room
    end
     
  end
     
  class Single
     
    def type
      puts "Type For single"
    end
     
    def room
      puts "Room for single"
    end
     
  end
     
     
  class Couple
     
    def type
      puts "Type for couples"
    end
     
    def room
      puts "Room for couples"
    end
     
  end
     
  # Performing polymorphism 
  hotel= Hotel.new
  puts "This visitor is Single: "
  customer = Single.new
  hotel.type(customer)
  hotel.room(customer)
     
     
  puts "The visitors are a couple: "
  customer = Couple.new
  hotel.type(customer)
  hotel.room(customer)
