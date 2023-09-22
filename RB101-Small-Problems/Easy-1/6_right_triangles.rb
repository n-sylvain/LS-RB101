def triangle(n)
  for i in 1..n
    puts " " * (n - i) + "*" * i
  end
end

triangle(10)

=begin
def triangle(num)
  spaces = num - 1
  stars = 1

  num.times do |n|
    puts (' ' * spaces) + ('*' * stars)
    spaces -= 1
    stars += 1
  end
end
=end