=begin

# question 1

output = "The Flintstones Rock!"
10.times { |index| puts (" " * index) + "#{output}" }

# question 2

# puts "the value of 40 + 2 is " + (40 + 2) # error because you can't add an integer and a string together

# option 1
value = 40 + 2
puts "the value of 40 + 2 is #{value}"

# option 2
puts "the value of 40 + 2 is #{40 + 2}"

# question 3

def factors(number)
  divisor = number
  factors = []
  loop do                   # answer = while divisor < 0 do ...
    break if divisor <= 0
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
  factors
end

puts factors(0)
puts factors(100)

# bonus 1
the purpose of number % divisor == 0 is to find a return value that is a positive integer (whole number)
the number can be divided by itself and return a whole number (no remainder)

# bonus 2
the return value of the method

# question 4

difference between << and + is that << will mutate the original array passed to the method,
whereas + will return a new array (similar to <<), but will not mutate the original array

# question 5

limit = 15

def fib(first_num, second_num, limit)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1, limit) # make limit accessible in the method by passing it as an argument
puts "result is #{result}"

# question 6

answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)
p answer - 8 # 34

# question 7

# it will change the original hash and create a new hash
# the assignment operator binded munsters to a new hash
# reminder - assignment is non-mutating, it just binds the variable to a new object

# question 8

def rps(fist1, fist2)
  if fist1 == "rock"
    (fist2 == "paper") ? "paper" : "rock"
  elsif fist1 == "paper"
    (fist2 == "scissors") ? "scissors" : "paper"
  else
    (fist2 == "rock") ? "rock" : "scissors"
  end
end

puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")
# paper
# the third rps(rock & paper), evaluates to paper
# the fourth rps(rock & scissors), evaluates to rock
# the second rps(now paper & rock), evaluates to paper
# finally, the first rps is evaluated, paper & rock, which then evaluates to paper

# questions 9

def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

puts bar(foo)
# no
# foo evaluates to "yes", because the paramenter is not used inside the foo method
# "yes" is then passed to the bar method, where it returns the fasly value inside the method of "no"
=end
