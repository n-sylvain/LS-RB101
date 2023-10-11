def prompt(message)
  puts "==> #{message}"
end

orders = %w(1st 2nd 3rd 4th 5th last)
numbers = []

orders.each do |order|
  prompt "Enter the #{order} number:"
  numbers << gets.chomp.to_i # we don't check integer validity on purpose
end

last_number = numbers.pop

if numbers.include?(last_number)
  puts "The number #{last_number} appears in #{numbers}"
else
  puts "The number #{last_number} does not appear in #{numbers}"
end
