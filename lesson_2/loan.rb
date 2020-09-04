require 'yaml'
MESSAGES = YAML.load_file('loan_messages.yml')

def clear_system
  system 'clear'
end

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

def positive?(input)
  input.to_i > 0
end

def display_welcome
  prompt(MESSAGES['welcome'])
end

def retrieve_loan_amount
  prompt(MESSAGES['loan_amount'])
  loan_amount = ""

  loop do
    loan_amount = gets.chomp
    break if number?(loan_amount) && positive?(loan_amount)
    prompt(MESSAGES['invalid'])
  end
  loan_amount
end

def retrieve_apr_amount
  prompt(MESSAGES['apr'])
  apr = ""

  loop do
    apr = gets.chomp
    break if number?(apr) && positive?(apr)
    prompt(MESSAGES['invalid'])
  end
  apr
end

def retrieve_loan_years_amount
  prompt(MESSAGES['duration_years'])
  loan_years = ""

  loop do
    loan_years = gets.chomp
    break if integer?(loan_years) && positive?(loan_years)
    prompt(MESSAGES['years_invalid'])
  end
  loan_years
end

def calculate_monthly_interest_rate(apr)
  (apr.to_f / 100) / 12
end

def calculate_loan_months(input)
  input.to_i * 12
end

def calculate_monthly_payment(amount, rate, duration)
  (amount.to_i * (rate / (1 - (1 + rate)**(-duration.to_i)))).round(2)
end

def display_monthly_payment(payment)
  prompt(MESSAGES['monthly_payment'] + "$#{payment}")
end

def calculate_again
  prompt(MESSAGES['again'])
  answer = ""

  loop do
    answer = gets.chomp.downcase
    break if %w(y yes n no).include?(answer)
    prompt(MESSAGES['invalid_answer'])
  end
  answer
end

def display_goodbye
  prompt(MESSAGES['thank_you'])
end

clear_system

display_welcome
loop do
  loan_amount = retrieve_loan_amount
  apr = retrieve_apr_amount
  loan_years = retrieve_loan_years_amount

  monthly_interest_rate = calculate_monthly_interest_rate(apr)
  loan_months = calculate_loan_months(loan_years)

  monthly_payment = calculate_monthly_payment(
    loan_amount,
    monthly_interest_rate,
    loan_months
  )

  display_monthly_payment(monthly_payment)

  answer = calculate_again
  unless answer == ('y' && 'yes')
    break
  end
end

display_goodbye
