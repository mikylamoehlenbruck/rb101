=begin
Understand the problem
- input
  - one argument
  - can positive, negative or 0
  - don't need to validate value
- output
  - boolean (true or false)
- rules
  - returns true if int is odd

Test cases
puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true

Data structures
- input
  - numbers
- output
  - boolean
- rules
  - conditional

Describe your algorithm
- Define a method that takes an integer,
  without using #odd? or #even?
- return true if the integer is odd
=end

def is_odd?(num)
  num % 2 == 1
end

puts is_odd?(2)
puts is_odd?(5)
puts is_odd?(-17)
puts is_odd?(-8)
puts is_odd?(0)
puts is_odd?(7)
