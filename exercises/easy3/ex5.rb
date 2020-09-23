def multiply(num1, num2)
  num1 * num2
end

def square(num)
  multiply(num, num)
end

def power_of_n(num, power)
  product = 1
  power.times {product = multiply(num, product)}
  product
end


puts square(5) == 25
puts square(-8) == 64
puts power_of_n(3, 2)
