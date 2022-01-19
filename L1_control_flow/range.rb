print "Please enter a number ?"
user_number = Integer(gets.chomp) # user input for a number

if user_number >= 0 && user_number <= 50  # when user_number between 0 to 50
    puts "Your number between 0 to 50"
elsif user_number >= 51 && user_number <= 100  # when user_number between 51 to 100
    puts "Your number between 51 to 100"
elsif user_number > 100 # when user_number greater than 100
    puts "your number is greater than 100" 
end