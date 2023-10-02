def prompt(message)
  puts "==> #{message}"
end

prompt "Enter the first number:"
number_first = gets.chomp.to_i
prompt "Enter the second number:"
number_second = gets.chomp.to_i

prompt "#{number_first} + #{number_second} = #{number_first + number_second}"
prompt "#{number_first} - #{number_second} = #{number_first - number_second}"
prompt "#{number_first} * #{number_second} = #{number_first * number_second}"
prompt "#{number_first} / #{number_second} = #{number_first / number_second}"
prompt "#{number_first} % #{number_second} = #{number_first % number_second}"
prompt "#{number_first} ** #{number_second} = #{number_first ** number_second}"

=begin
OPERATIONS = %w[+ - * % **]

puts 'Enter the first number'
first_number = gets.chomp.to_i

puts 'Enter the second number'
second_number = gets.chomp.to_i

arr = [first_number, second_number]

OPERATIONS.each do |operation|
  puts "#{first_number} #{operation} #{second_number} = #{arr.inject(operation)}"
end
=end

=begin
puts "==> Enter the first number:"
num1 = gets.chomp.to_f
num2 = ''
loop { 
  puts "==> Enter the second number:"
  num2 = gets.chomp.to_f
  break if num2 != 0 }
array = [:+, :-, :*, :/, :%, :**]
array.each {|x| puts "==> #{num1} #{x} #{num2} = #{[num1, num2].inject(x)}"}
=end