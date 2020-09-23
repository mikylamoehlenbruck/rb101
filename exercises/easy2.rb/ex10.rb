=begin
array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2
=end
# array2 = Moe Larry CURLY SHEMP Harpo CHICO Groucho Zeppo
# << is mutating, therefore array2 now contains all the same elements from array 1 (pointing to the same objects in memory)
# each element of array1 is a String object. Calling #upcase! on each object causes the object to mutate
# since array2 is pointing to the same elements in array1, the changes will also occur in array2

# How can this feature of ruby get you in trouble? How can you avoid it?
# you could end up changing variables that you originally did not want to
# you could avoid it by using non-mutating methods, like String#new
# and/or reassigning array1 if you need only array1 changed

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2.push(String.new(value)) }
array1 = array1.each { |value| value.upcase if value.start_with?('C', 'S') }
p array2
