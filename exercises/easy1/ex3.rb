=begin
understand the problem
- input
  - one argument
  - positive integer
- output
  - array

test cases
puts digit_list(12345) = [1, 2, 3, 4, 5]
puts digit_list(7) = [7]
puts digit_list(375290) = [3, 7, 5, 2, 9, 0]
puts digit_list(444) = [4, 4, 4]

data structures
- input
  - number
- output
  - array of numbers

algorithm
- define a method that accepts a positive integer
- split the integer and store in an array
- return an array where each index is a digit of the argument
=end

def digit_list(number)
  number.digits.reverse
end

puts digit_list(12345) == [1, 2, 3, 4, 5]
puts digit_list(7) == [7]
puts digit_list(375290) == [3, 7, 5, 2, 9, 0]
puts digit_list(444) == [4, 4, 4]
