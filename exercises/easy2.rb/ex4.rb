puts "What is your age?"
age = gets.chomp.to_i

puts "At what age would you like to retire?"
retire_age = gets.chomp.to_i

current_year = Time.now.year
years_til_retire = retire_age - age
retire_year = current_year + years_til_retire

puts "It's #{current_year}. You will retire in #{retire_year}."
puts "You only have #{years_til_retire} years of work to go!"
