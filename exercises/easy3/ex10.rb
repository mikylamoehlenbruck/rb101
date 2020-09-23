
def palindromic_number?(num)
  num = num.to_s
  num.reverse == num
end

puts palindromic_number?(34543) == true
puts palindromic_number?(123210) == false
puts palindromic_number?(22) == true
puts palindromic_number?(5) == true
