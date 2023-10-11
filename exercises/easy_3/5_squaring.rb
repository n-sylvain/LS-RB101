def multiply(number1, number2)
  number1 * number2
end

def square(number)
  multiply(number, number)
end

def nth_power(number, power)
  if power == 1 then
    return num
  end
  if power == 2 then
    return square(number)
  end
  if power %2 == 0 then
    return square(nth_power(number, power / 2))
  end
  if power %2 == 1 then
    return multiply(number, square(nth_power(number, power / 2)))
  end
end
