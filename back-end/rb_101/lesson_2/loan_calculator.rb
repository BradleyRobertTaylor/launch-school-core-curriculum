def prompt(message)
  puts "=> #{message}"
end

def valid_number?(num)
  if num.to_i > 0
    true
  end
end

prompt("Welcome to Mortgage/Car Loan Calculator!")
prompt("-------------------------")

loop do # main loop
  loan_amount = nil

  loop do
    prompt('What is your loan amount?')
    loan_amount = gets.chomp

    if valid_number?(loan_amount.to_i) && !loan_amount.empty?
      break
    else
      prompt('That is not a valid number.')
    end
  end

  loan_duration_in_years = nil

  loop do
    prompt('What is your loan duration in years?')
    loan_duration_in_years = gets.chomp
    if valid_number?(loan_duration_in_years) && !loan_amount.empty?
      break
    else
      prompt('That is not a valid number.')
    end
  end

  annual_interest_rate = nil

  loop do
    prompt("What is your your annual percentage rate?")
    prompt("Ex. if 5% write '5', if 20% write '20")
    annual_interest_rate = gets.chomp
    if valid_number?(annual_interest_rate) && !loan_amount.empty?
      break
    else
      prompt('That is not a valid number.')
    end
  end

  loan_duration_in_months = loan_duration_in_years.to_i * 12
  monthly_interest_rate = annual_interest_rate.to_f / 100 / 12
  loan_amount = loan_amount.to_i

  monthly_payment = loan_amount * (monthly_interest_rate /
   (1 - (1 + monthly_interest_rate)**(-loan_duration_in_months)))
  monthly_payment = monthly_payment.round(2)

  prompt("Your monthly payment is $#{monthly_payment}")

  prompt("Do you want to perform another calculation? (Y to calculate again)")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt('Thank you for using Car/Mortgage Loan Calculator')
prompt('Goodbye!')
