# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on th two numbers
# output the results

require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

# check exercise for how to do languages

def prompt(message)
  puts "=> #{message}"
end

def integer?(input)
  input.to_i.to_s == input
end

def float?(input)
  input.to_f.to_s == input
end

def number?(input)
  integer?(input) || float?(input)
end

def operation_to_message(op)
  operation = case op
              when '1'
                'Adding'
              when '2'
                'Subtracting'
              when '3'
                'Multiplying'
              when '4'
                'Dividing'
              end
  # x = "code here"

  operation # make sure the variable is the last line in the method if you needed to add code
end

prompt(MESSAGES['welcome'])

name = ""
loop do
  name = gets.chomp

  if name.empty?
    prompt(MESSAGES['valid_name'])
  else
    break
  end
end

prompt "Hi #{name}!"

loop do # main loop
  num1 = ""
  loop do
    prompt(MESSAGES['first_num'])
    num1 = gets.chomp

    if number?(num1)
      break
    else
      prompt(MESSAGES['invalid_num'])
    end
  end

  num2 = ""
  loop do
    prompt(MESSAGES['second_num'])
    num2 = gets.chomp

    if number?(num2)
      break
    else
      prompt(MESSAGES['invalid_num'])
    end
  end

  operator_prompt = <<-MSG
    What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG

  prompt(operator_prompt)

  operator = ""
  loop do
    operator = gets.chomp

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(MESSAGES['op_choice'])
    end
  end

  prompt "#{operation_to_message(operator)}" + (MESSAGES['op_to_message'])

  result = case operator
           when '1'
             num1.to_i + num2.to_i
           when '2'
             num1.to_i - num2.to_i
           when '3'
             num1.to_i * num2.to_i
           when '4'
             num1.to_f / num2.to_f
           end

  prompt(MESSAGES['result'] + "#{result}")

  prompt(MESSAGES['perform_again'])
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt(MESSAGES['goodbye'])
