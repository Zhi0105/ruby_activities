class Geeks 
  
    def public_method 
        puts "In Public!"
        private_method
    end
  
      
    private 
  
    def private_method 
        puts "In Private!"
    end
end
  
  
# creating an object of class Geeks 
obj = Geeks.new
  
# calling the public method of class Geeks 
obj.public_method