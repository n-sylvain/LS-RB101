def stringy(number)
  result = ""
  (1..number.abs).each do |x|
    if x.odd?
      result << "1"
    else
      result << "0"
    end
  end
  result
end

puts stringy(6)
puts stringy(9)
puts stringy(4)
puts stringy(7)
puts stringy(1)

def stringy_solution(size)
  numbers = []

  size.times do |index|
    number = index.even? ? 1 : 0
    numbers << number
  end

  numbers.join
end

def stringy_exploration(size, arg=1)
  numbers = []

  size.times do |index|
    number = index.even? ? 1 : 0 if arg=1
    number = index.even? ? 0 : 1 if arg=0
    numbers << number
  end

  numbers.join
end

puts stringy_exploration(6, 0)