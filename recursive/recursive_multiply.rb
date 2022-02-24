require 'test/unit'
extend Test::Unit::Assertions

def multiply(x, y)
    if y == 1
        return x
    end
    if x == 1
        return y
    end
    if x == 0 || y == 0
        return 0
    end
    
    return x + (multiply(x, y - 1))
    
end

assert_equal(multiply(3, 6), 18, 'Incorrect result')
assert_equal(multiply(3, -6), -18, 'result should be Negative.')
assert_equal(multiply(-3, 6), -18, 'result must be Negative.')
assert_equal(multiply(-3, 0), 0, 'Product must be 0.')
assert_equal(multiply(0, 3), 0, 'Product must be 0.')