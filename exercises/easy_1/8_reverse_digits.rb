def reversed_number(number)
  # result = number.to_s.split("")
  # result.reverse.join.to_i
  number.to_s.reverse.to_i
end

puts reversed_number(12345)
puts reversed_number(12213)
puts reversed_number(456)
puts reversed_number(12000)
puts reversed_number(12003)
puts reversed_number(1)