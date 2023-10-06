require 'yaml'
MESSAGES = YAML.load_file('mortgage_messages.yml')

def prompt(message)
  Kernel.puts("=> #{message}")
end

def messages(message)
  MESSAGES[message]
end

def valid_number?(input)
  integer?(input) || float?(input)
end

def integer?(input)
  Integer(input) rescue false
end

def float?(input)
  Float(input) rescue false
end

prompt(messages('welcome'))

loan_amount = ""
loop do
  prompt(messages('loan_amount_request'))
  loan_amount = Kernel.gets().chomp().sub(',', '.').to_f

  if valid_number?(loan_amount) && (loan_amount > 0)
    loan_amount_message = messages('loan_amount_request_check')
    formatted_amount = format('%.2f', loan_amount)
    message = "#{loan_amount_message}#{formatted_amount}"
    prompt(message)
    prompt(messages('data_save'))
    break if Kernel.gets().chomp().downcase.start_with?('y')
  else
    prompt(messages('loan_amount_request_again'))
  end
end

annual_rate = ""
loop do
  prompt(messages('annual_percentage_rate_request'))
  annual_rate = Kernel.gets().chomp().sub(',', '.').to_f

  if valid_number?(annual_rate) && (annual_rate > 0)
    percentage_rate_message = messages('annual_percentage_rate_check')
    formatted_rate = format('%.2f%%', annual_rate)
    message = "#{percentage_rate_message}#{formatted_rate}"
    prompt(message)
    prompt(messages('data_save'))
    break if Kernel.gets().chomp().downcase.start_with?('y')
  else
    prompt(messages('annual_percentage_rate_again'))
  end
end

month_duration = ""
formatted_duration = ""
loop do
  prompt(messages('loan_duration_request'))
  month_duration = Kernel.gets().chomp().to_i

  if valid_number?(month_duration) && (month_duration > 0)
    month_duration_message = messages('loan_duration_request_check')
    formatted_duration = "#{month_duration / 12} year(s) and #{month_duration % 12} month(s)"
    message = "#{month_duration_message}#{formatted_duration}"
    prompt(message)
    prompt(messages('data_save'))
    break if Kernel.gets().chomp().downcase.start_with?('y')
  else
    prompt(messages('loan_duration_request_again'))
  end
end

monthly_rate = (annual_rate / 12) / 100
monthly_payment = loan_amount *
                  (monthly_rate / (1 - (1 + monthly_rate)**(-month_duration)))

result_message = <<-MSG
#{messages('monthly_payment')} #{monthly_payment.round(2)}
#{messages('parameters')}
  - #{messages('loan_amount')} #{loan_amount}
  - #{messages('monthly_rate')} #{(monthly_rate * 100).round(2)} % (APR: #{annual_rate} %)
  - #{messages('duration')} #{month_duration} (#{formatted_duration})
MSG

puts result_message
prompt("Thank you for using the calculator.")
