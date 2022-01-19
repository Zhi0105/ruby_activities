h = {a:1, b:2, c:3, d:4} # given array

# MY FIRST ANSWER 
puts "First Answer:" 
puts h[:b] # print the value of b
h[:e] = 5 # add another key pair to hash with e:5
puts h # print updated hash value

# MY SECOND ANSWER
puts "Second Answer:"
h[:e] += h[:b] # add value of b to the value of e keys in hash
puts h # print updated hash
