def palindrome?(input)
  input.reverse == input
end

def real_palindrome?(input)
  input = input.downcase.delete('^a-z0-9')
  palindrome?(input)
end

puts real_palindrome?('madam')
puts real_palindrome?('Madam')
puts real_palindrome?("Madam, I'm Adam")
puts real_palindrome?('356653')
puts real_palindrome?('356a653')
puts real_palindrome?('123ab321')
