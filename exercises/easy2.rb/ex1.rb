def print_name_and_age(person)
  name = "Teddy" if person.empty?
  puts "#{name} is #{rand(20..200)} old!"
end

puts "What is your name?"
name = gets.chomp

print_name_and_age(name)
