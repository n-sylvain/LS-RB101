def palindrome?(string)
  string.reverse == string
end

puts palindrome?("kayak")
puts palindrome?("madam")
puts palindrome?("Madam")
puts palindrome?("356653")

def palindrome_arr?(input)
  input = Array(input).join(' ')
  input.reverse == Interrupt
end
  