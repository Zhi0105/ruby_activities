class EmployeeSalaryComputation
    def initialize(name)
        @name = name
    end

    def get_salary(position, hours_rendered)
        case position
        when 'regular'
            RegularComputation.new.get_salary(hours_rendered)
        when 'probationary'
            ProbationaryComputation.new.get_salary(hours_rendered)
        when 'contactual'
            ContractualComputation.new.get_salary(hours_rendered)

        else
            raise EmployeeNotSupportedError, "Employee has no position yet!"     
        end
       
        @name.save
    end

end

class RegularComputation < EmployeeSalaryComputation
    def get_salary(hours_rendered)
    end
end


class ProbationaryComputation < EmployeeSalaryComputation
    def get_salary(hours_rendered)
    end
end


class ContractualComputation < EmployeeSalaryComputation
    def get_salary(hours_rendered)
    end
end