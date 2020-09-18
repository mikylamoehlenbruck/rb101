# method that thats one argument
# take a positive integer
# returns sum of all digits

# input = integer
# output = integer
# rules = integer addition

# write a method that accepts one argument
# split the integer into an array of all the digits by converting to a string
# iterate through the array to convert all elements back to an integer
# sum all the elements together
# challenge - don't use basic looping methods
# output the result


def sum(integer)
  integer_array = integer.to_s.split(//)
  integer_array.map! { |num| num.to_i }
  sum = integer_array.sum
end

def sum_challenge(integer)
  integer.digits.sum
end


puts sum_challenge(23) == 5
puts sum_challenge(496) == 19
puts sum_challenge(123_456_789) == 45
