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
  input.to_i.to_s == input
end

def float?(input)
  input.to_f.to_s == input
end

def message_type(type)
  case type
  when 'loan_amount'
    message_request = 'loan_amount_request'
    message_check = 'loan_amount_request_check'
    message_again = 'loan_amount_request_again'
  when 'annual_rate'
    message_request = 'annual_percentage_rate_request'
    message_check = 'annual_percentage_rate_check'
    message_again = 'annual_percentage_rate_again'
  when 'duration'
    message_request = 'loan_duration_request'
    message_check = 'loan_duration_request_check'
    message_again = 'loan_duration_request_again'
  end
  return message_request, message_check, message_again
end

def input_variables(type) # 1. 'loan_amount' 2. 'annual_rate' 3. 'duration'
  message_request, message_check, message_again = message_type(type)

  loop do
    prompt(messages(message_request))
    if type == 'duration'
      number = Kernel.gets().chomp().to_i
    else
      number = Kernel.gets().chomp().sub(',', '.').to_f
    end

    if valid_number?(number.to_s) && (number > 0)
      message_check = messages(message_check)
      if type == 'loan_amount'
        formatted_number = format('%.2f', number)
      elsif type == 'annual_rate'
        formatted_number = format('%.2f%%', number)
      else
        formatted_number = "#{number / 12} year(s) and "
        formatted_number = "#{formatted_number}#{number % 12} month(s)"
      end
      message = "#{message_check}#{formatted_number}"
      prompt(message)
      prompt(messages('data_save'))
      if Kernel.gets().chomp().downcase().start_with?('y')
        return number, formatted_number if type == 'duration'
        return number
      end
    else
      prompt(messages(message_again))
    end
  end
end

prompt(messages('welcome'))

loop do
  loan_amount = input_variables('loan_amount')
  annual_rate = input_variables('annual_rate')
  month_duration, formatted_duration = input_variables('duration')

  monthly_rate = (annual_rate / 12) / 100
  monthly_payment = loan_amount *
                    (monthly_rate / (1 - ((1 + monthly_rate)**(-month_duration))))

  result_message = <<-MSG
  #{messages('monthly_payment')} #{monthly_payment.round(2)}
  #{messages('parameters')}
    - #{messages('loan_amount')} #{format('%.2f', loan_amount)}
    - #{messages('monthly_rate')} #{(monthly_rate * 100).round(2)} % (APR: #{annual_rate} %)
    - #{messages('duration')} #{month_duration} (#{formatted_duration})
  MSG

  puts result_message

  prompt(messages('try_again?'))
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for using the calculator. Good Bye!")
