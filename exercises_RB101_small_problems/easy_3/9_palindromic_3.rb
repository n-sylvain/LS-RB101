def palindrome?(input)
  input.reverse == input
end

def palindromic_number?(number)
  palindrome?(number.to_s)
end

puts palindromic_number?(34543)
puts palindromic_number?(123210)
puts palindromic_number?(22)
puts palindromic_number?(5)
