string = ''

while (string.upcase != "STOP") || (string.downcase != "stop") # CONDITION IF THE VALUE INPUTTED BY THE USER IS stop in lowerccase or uppercase
    puts "Please enter a string ?" 
    string = gets.chomp # asking a value to a user
end