=begin
def oddities(array)
  array.select.each_with_index do |num, index|
    num if index.even?
  end
end

puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []


# 2nd way

def oddities2(array)
  odd_elements = []

  array.each_with_index do |element, index|
    if index.even?
      odd_elements << element
    end
  end
  odd_elements
end

puts oddities2([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities2([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
puts oddities2(['abc', 'def']) == ['abc']
puts oddities2([123]) == [123]
puts oddities2([]) == []
=end

# even

def even_elements(array)
  even_elements = []
  index = 1

  while index < array.length
    even_elements << array[index]
    index += 2
  end
  even_elements
end

puts even_elements([2, 3, 4, 5, 6])
puts even_elements([1, 2, 3, 4, 5, 6])
puts even_elements(['abc', 'def'])
puts even_elements([123])
puts even_elements([])
