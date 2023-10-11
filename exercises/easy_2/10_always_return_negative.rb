def negative(number)
  # return -number if number > 0
  # return number if number < 0
  # number
  number > 0 ? -number : number
end

puts negative(5)
puts negative(-3)
puts negative(0)