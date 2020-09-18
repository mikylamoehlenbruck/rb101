=begin
understand the problem
- write a method that takes a string of one or more words
- reverse any words that contain five or more characters
- return a string with the words reversed

input/output
- input
  - string
- output
  - string

test cases
puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS

algorithm
- define a method that accepts 1 argument, a string
- split the string into an array
- reverse any words in the array greater than 5 letters in length
- join the array back into a string
- print the string
=end

def reverse_words(string)
  array = string.split

  array.each do |word|
    word.reverse! if word.length >= 5
  end

  array.join(' ')
end

puts reverse_words('Professional')
puts reverse_words('Walk around the block')
puts reverse_words('Launch School')
