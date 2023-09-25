def sum(number)
  # total = 0
  # for i in 1..number
  #   total += i
  #   puts total
  # end
  # total
  array = (1..number).to_a
  total = array.inject(:+)
end

def prod(number)
  total = 1
  for i in 1..number
    total *= i
  end
  total
end

puts ">> Please enter an integer greater than 0:"
number = gets.chomp.to_i

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
compute = gets.chomp.downcase

if compute == "s"
  sum(number)
  result = sum(number)
  puts "The sum of the integers between 1 and #{number} is #{result}."
elsif compute == "p"
  result = prod(number)
  puts "The product of the integers between 1 and #{number} is #{result}."
else
  puts "Try again"
end