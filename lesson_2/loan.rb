=begin
  Collect information from the user for:
    -loan amount
    -APR
    -loan duration

  Then, caluclate:
    -monthly interest rate
    -loan duration in months
    -monthly payment

  Finally, print out the user's monthly payment
=end

require 'yaml'
MESSAGES = YAML.load_file('loan_messages.yml')

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

prompt(MESSAGES['welcome'])

loop do
  loan_amount = ""
  loop do
    prompt(MESSAGES['loan_amount'])
    loan_amount = gets.chomp

    if number?(loan_amount) && positive?(loan_amount)
      break
    else
      prompt(MESSAGES['invalid'])
    end
  end

  apr = ""
  loop do
    prompt(MESSAGES['apr'])
    apr = gets.chomp

    if number?(apr)
      break
    else
      prompt(MESSAGES['invalid'])
    end
  end

  loan_years = ""
  loop do
    prompt(MESSAGES['duration_years'])
    loan_years = gets.chomp

    if integer?(loan_years)
      break
    else
      prompt(MESSAGES['years_invalid'])
    end
  end

  monthly_interest_rate = ((apr.to_f / 100) / 12).round(2)
  loan_months = loan_years.to_i * 12

  monthly_calculation = loan_amount.to_i *
                        (monthly_interest_rate /
                        (1 - (1 + monthly_interest_rate)**(-loan_months.to_i)))

  monthly_payment = monthly_calculation.round(2)
  prompt(MESSAGES['monthly_payment'] + "$#{monthly_payment}")

  prompt(MESSAGES['again'])
  answer = gets.chomp

  unless answer.downcase == 'y'
    break
  end
end

prompt(MESSAGES['thank_you'])
