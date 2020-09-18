=begin
understand the problem
- write a method that takes one argument, a positive integer
- method returns a string of alternating 1s and 0s
- length of string matches given integer
- string must start with 1

input/output
- input
  - number
- output
  - string
- rule
  - array

test cases
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

algorithm
- define a method that accepts 1 argument, a number
- use the times method to iterate over each number from the integer passed in
- if an even number is iterated over, add 1 to the array
- if an odd number is iterated over, add 0 to the array
- return a string of 1s and 0s for the length of the integer
=end

def stringy(int, int = 1)
  array = []

  int.times do |index|
    number = index.even? ? 1 : 0
    array << number
    end
array.join
end

puts stringy(0)

=begin
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
=end
