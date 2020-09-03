=begin
1. a method that returns the sum of two integers
CASUAL
Given the sum of two integers.

Pass two parameters to the method definition
  - within the method, add the two parameters together

After defining the method, call the method and pass 2 integers as arguments to return the value
FORMAL
START

DEF sum_method(parameter1, parameter2)
  parameter1 + parameter2

PRINT method(integer 1, integer 2)

END
=end

def sum_method(a, b)
  a + b
end

puts sum_method(7, 3)

=begin
2. a method that takes an array of strings, and returns a string that is all those strings concatenated together
CASUAL
Given an array a srtings.

Define a method that takes one parameter.
  - within the method, call the join method to the parameter and pass an empty string through the join method

After defining the method, call the method with puts and pass an array as the argument and return a string.
FORMAL
START

DEF array_method(parameter)
    parameter.join(" ")

END

PRINT array_method(["element1", "element2"])
=end

def array_method(string)
  string.join(" ")
end

puts array_method(["hello", "world"])

=begin
3. a method that takes an array of integers, and returns a new array with every other element
CASUAL
Given an array of integers.

Define a method that takes one paramter.
  - iterate over each element in the parameter with the select method and with_index method
  - pass two variables, one blank parameter as the value, and another variable to represent the index
  - in the code block, call the odd? method to the index variable

After defining the method, call the method and pass an array of integers to it, printing it to return a new array
FORMAL
START

DEF method(paramter)
  method.select.with_index { |_, index| index.odd? }

PRINT method([integer1, integer2, integer3])
=end


 def every_other(array)
  array.select.with_index {|_, x| x.odd? }
 end

p every_other([1, 3, 5, 8, 3, 6, 1, 5, 7])
