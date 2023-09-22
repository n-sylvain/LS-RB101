def is_odd?(number)
  return true if number.abs % 2 != 0
  return false if number.abs % 2 == 0 or number == 0
end

def is_odd_solution(number)
  number % 2 == 1
end

def is_odd_rem(number)
  number.abs.remainder(2) == 1
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true

puts is_odd_rem(-8)