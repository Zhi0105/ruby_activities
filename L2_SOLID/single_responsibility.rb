class PayslipGenerator
    def initialize(employee, month)
      @employee = employee
      @month = month
    end

    def generate_payslip
      # Code to read from database,
      # generate payslip
      # and write it to a file
    end
end

class PayslipMailer
    def initialize(employee)
      @employee = employee
    end

    def send_mail
      # code to send email
      employee.email
      month
    end
end

  month = 11
  # General Payslip
  generator = PayslipGenerator.new(employee, month)
  generator.generate_payslip
  # Send Email
  mailer = PayslipMailer.new(employee, month)
  mailer.send_mail