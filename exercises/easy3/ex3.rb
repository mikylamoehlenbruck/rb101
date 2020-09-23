puts "Please write a word or multiple words:"
phrase = gets.chomp

count = phrase.delete(' ').length

puts "There are #{count} characters in '#{phrase}'."
