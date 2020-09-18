# method takes one argument
# argument is an array of integers
# returns average of all numbers in array
# array never empty, has positive integers

# input = array
# output = integer
# rules = multiplication and division

# method takes an array
# adds all the elements of the array together
# divides by the number of elements in the array
# prints the result

def average(array)
  average = array.sum / array.count
end


puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
