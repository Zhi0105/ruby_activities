h = {a:1, b:2, c:3, d:4}

puts "First Answer:"
puts h[:b]
h[:e] = 5
puts h


puts "Second Answer:"
h[:e] += h[:b]
puts h
