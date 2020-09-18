def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

puts my_method(4, 5, 6)

# 4, 5, 3, 6
# First 4 is assigned to a, then 6 is assigned to d.
# This leaves only the arguments with default values.
# Since 5 has not been assigned to a value yet,
# it is given to b and c uses its default value of 3.

#  "default positional arguments"
