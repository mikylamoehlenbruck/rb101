# method takes 2 arguments - positive int and boolean
# calculates the bonus for a salary
# if bonus = true, bonus = half of salary
# if boolean = false, bonus = 0

# input = number & boolean
# output = number
# rules = conditional statement and integer division

# method takes two arguments
# write a conditional statement
# if boolean = true, divide the salary argument by 2
# if the boolean = fase, return 0

def calculate_bonus(salary, bonus)
  bonus ? (salary / 2) : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
