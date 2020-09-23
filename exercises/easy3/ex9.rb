=begin
write a method that returns true if the string passed in is a palindrome
return false otherwise

input = string
output = boolean value
rules
  - case does not matter
  - ignore all non-alphanumeric characters

define a method that takes 1 argument, a string
reverse the string and remove all non-alphanumeric characters
if the string reversed is the same as the string forward, return true
  otherwise, return false
=end

def real_palindrome?(string)
  string = string.downcase.delete('^a-z0-9')
  string.reverse == string
end

puts real_palindrome?('madam') == true
puts real_palindrome?('Madam') == true           # (case does not matter)
puts real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
puts real_palindrome?('356653') == true
puts real_palindrome?('356a653') == true
puts real_palindrome?('123ab321') == false
