def print_name(input)
  if input.include? '!'
    input.chop!
    puts "HELLO #{input.upcase}. WHY ARE WE SCREAMING?"
  else
    puts "Hello #{input}."
  end
end

puts "What is your name?"
name = gets.chomp!

print_name(name)
