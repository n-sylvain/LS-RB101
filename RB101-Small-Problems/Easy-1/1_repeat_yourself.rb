def repeat(a="Hello", count=1)
  while count > 0 do
    puts a
    count -= 1
  end
end

def repeat_solution(string, number)
  number.times { puts string }
end

repeat("Hello", 3)
repeat_solution("Hello!", 3)