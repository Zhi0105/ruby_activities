arr = [6, 3, 1, 8, 4, 2, 10, 65, 102] # given array

new_arr = []  # declaration of new empty array

arr.each {|i| # loop the array

    if i % 2 == 0 # determine if the value inside of arr is divisible by 2
        new_arr.push(i) # when divisible by 2, then the number divisible by 2 will push to the new array
    end

}

puts new_arr  # print the value of new array
