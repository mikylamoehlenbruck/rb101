=begin
# question 1

numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers # 1 2 2 3

question 2 - difference between ! and ?

! : when appended to certain methods, it can turn that method into a destructive one
! : can also be used in conditional statement, to mean "not equal to"
? : is used in conditional statements, and can be used in method names to return a boolean value
1. != means not equal to
  - you should use it in a conditional statement
2. ! before something is used to turn any object into the opposite of their boolean equivilent
  !"hello" => false
3. ! after something means it will mutate the caller. Can't be applied to every method though
4. ? before something is the ternary operator ? :
5. ? after something (method) means it will return a boolean value
6. !! before something is used to turn any object into boolean equivilent
  !!"hello" => true

# question 3 - replace important with urgent

def replace(string)
  replacement = "urgent"
  string_array = string.split

  string_array.each do |word|
    word == "important" ? "urgent" : nil
  end
  string_array.join (" ")
end

advice = "Few things in life are as important as house training your pet dinosaur."
puts replace(advice)

answer => advice.gsub!('important', 'urgent')
STUDY GSUB!!
what method could you use in this string to replace the word important with urgent?
gsub!

# question 4

numbers = [1, 2, 3, 4, 5]

numbers.delete_at(1) # will delete the element at index 1 (2) => [1, 3, 4, 5]
  # return value is 2
numbers.delete(1) # will delete the element with the value 1 => [2, 3, 4, 5]
  # return value is 1

# question 5

puts (10..100).include?(42)

# question 6

famous_words = "seven years ago..."

puts "Four score and #{famous_words}"
puts "Four score and ".concat(famous_words)

# question 7

flinstones = ["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]
flinstones.flatten!
p flinstones

# question 8

flinstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

flinstones_array = []
flinstones_array << flinstones.key(2)
flinstones_array << flinstones["Barney"]
p flinstones_array

# answer = flinstones.assoc("Barney")
=end
