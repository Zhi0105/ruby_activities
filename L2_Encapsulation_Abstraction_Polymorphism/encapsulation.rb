class Operations
    def initialize(num, num2)
        @num = num
        @num2 = num2
    end

    def getSum
        puts "The sum is :" +  String(@num + @num2)
    end
end

sum = Operations.new(1, 2)
sum.getSum
