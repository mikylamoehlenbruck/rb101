def integer?(input)
  input.to_i.to_s == input
end

def float?(input)
  input.to_f.to_s == input
end

def number?(input)
  integer?(input) || float?(input)
end

def include_number?(array, num)
  array.include?(num)
end

number_array = []

num1 = ''
loop do
  puts "==> Enter the 1st number:"
  num1 = gets.chomp
  break if number?(num1)
    puts "Oops, please enter a valid number."
end

number_array << num1.to_i

num2 = ''
loop do
  puts "==> Enter the 2nd number:"
  num2 = gets.chomp
  break if number?(num2)
    puts "Oops, please enter a valid number."
end

number_array << num2.to_i

num3 = ''
loop do
  puts "==> Enter the 3rd number:"
  num3 = gets.chomp
  break if number?(num3)
    puts "Oops, please enter a valid number."
end

number_array << num3.to_i

num4 = ''
loop do
  puts "==> Enter the 4th number:"
  num4 = gets.chomp
  break if number?(num4)
    puts "Oops, please enter a valid number."
end

number_array << num4.to_i

num5 = ''
loop do
  puts "==> Enter the 5th number:"
  num5 = gets.chomp
  break if number?(num5)
    puts "Oops, please enter a valid number."

end

number_array << num5.to_i

num6 = ''
loop do
  puts "==> Enter the 6th number:"
  num6 = gets.chomp
  break if number?(num6)
    puts "Oops, please enter a valid number."
end

num6 = num6.to_i

include_number = include_number?(number_array, num6)

if include_number == true
  puts "The number #{num6} appears in #{number_array}."
else
  puts "The number #{num6} does not appear in #{number_array}."
end
