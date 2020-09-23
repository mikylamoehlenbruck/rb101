# prompt user to enter an integer greater than 0
# prompt user to decide program to calculate sum or product
# of all numbers between 1 and integer

# input = integer & string
# rule = integer addition or multiplication
# output = string and integer

# ask the user for an integer and store the answer in a variable
# conver the variable to an integer
# ask the user for an input 's' or 'p'
# if the input is 's', calcuate the sum of all the numbers
# if the input is 'p', calcuate the product of all the numbers


def calculate_sum(num)
  (1..num).inject { |sum, n| sum + n }
end

def calculate_product(num)
  (1..num).inject(1) { |product, n| product * n }
end

integer = 0
loop do
  puts ">> Please enter an integer greater than 0:"
  integer = gets.chomp.to_i
  break if integer > 0
    puts "Wrong input, please enter a number greater than 0"
end

answer = ''
loop do
  puts ">> Enter 's' to compute the sum, 'p' to compute the product."
  answer = gets.chomp
  break if answer == 's' || answer == 'p'
    puts "Wrong input, please enter 's' or 'p'."
end

if answer == 's'
  sum = calculate_sum(integer)
  puts "The sum of the integers between 1 and #{integer} is #{sum}."
elsif answer == 'p'
  product = calculate_product(integer)
  puts "The product of the integers between 1 and #{integer} is #{product}."
else
  puts "Uh oh. Wrong input"
end
