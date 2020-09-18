=begin
understand the problem
- write a method that takes one argument
- print the string with the words reversed

input/output
- input
  - string
- output
  - string

test cases
everse_sentence('Hello World') => 'World Hello'

algorithm
- define a method that accepts 1 argument
- split the string into an array
- reverse the elements in the array
- join the array back into a string
=end

def reverse_sentence(string)
  string.split.reverse.join(' ')
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
