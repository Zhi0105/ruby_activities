class Operations
    def initialize(first_number, second_number)
        @first_number = first_number
        @second_number = second_number
    end

    def get_sum
        puts "The sum is :" +  String(@first_number + @second_number)
    end
end

sum = Operations.new(1, 2)
sum.get_sum
