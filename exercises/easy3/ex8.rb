=begin
write a method that returns true if the string passed in is a palindrome
return false otherwise

input = string
output = boolean value
rules
  - case matters

define a method that takes 1 argument, a string
if the string reversed is the same as the string forward, return true
  otherwise, return false

def palindrome?(string)
  string.reverse == string
end

puts palindrome?('madam') == true
puts palindrome?('Madam') == false          # (case matters)
puts palindrome?("madam i'm adam") == false # (all characters matter)
puts palindrome?('356653') == true

# further exploration - array

def palindrome?(array)
  array.reverse == array
end

puts palindrome?([3, 5, 6, 6, 5, 3])
puts palindrome?(["hello", "world"])
=end

# further exploration - array and string

def palindrome?(argument)
  argumen.reverse == argument
end

puts palindrome?('madam')
puts palindrome?('Madam')
puts palindrome?([3, 5, 6, 6, 5, 3])
puts palindrome?(["hello", "world"])
