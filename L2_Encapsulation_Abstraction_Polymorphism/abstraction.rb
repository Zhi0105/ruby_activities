class Geeks 
  
    def publicMethod 
        puts "In Public!"
        privateMethod
    end
  
      
    private 
  
    def privateMethod 
        puts "In Private!"
    end
end
  
  
# creating an object of class Geeks 
obj = Geeks.new
  
# calling the public method of class Geeks 
obj.publicMethod