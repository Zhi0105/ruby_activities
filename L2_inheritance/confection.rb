class Confection
    def prepare
        "Baking at 350 degrees for 25 minutes. "
    end
end

class Cupcake < Confection
    def prepare
        super + "Applying frosting"
    end
end

class Bananacake < Confection
    def prepare
        super 
    end
end

#FOR CUPCAKE
cupcake = Cupcake.new
puts "FOR CUPCAKE:"
puts cupcake.prepare


#FOR BANANA CAKE
bananacake = Bananacake.new
puts "FOR BANANA CAKE:"
puts bananacake.prepare
