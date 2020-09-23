def prompt(str)
  puts "==> #{str}"
end

def get_first_num
  prompt "Enter the first number:"
  num = gets.chomp.to_f
end

def get_second_num
  num = ''
  loop do
    prompt "Enter the second number:"
    num = gets.chomp.to_f
    break unless num == 0
      prompt "Please enter a number other than 0"
  end

  num
end

def arithmetic(num1, num2)
  prompt "#{num1} + #{num2} = #{num1 + num2}"
  prompt "#{num1} - #{num2} = #{num1 - num2}"
  prompt "#{num1} * #{num2} = #{num1 * num2}"
  prompt "#{num1} / #{num2} = #{num1 / num2}"
  prompt "#{num1} % #{num2} = #{num1 % num2}"
  prompt "#{num1} ** #{num2} = #{num1 ** num2}"
end

first_num = get_first_num
second_num = get_second_num

arithmetic(first_num, second_num)
