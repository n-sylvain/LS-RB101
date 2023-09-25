puts "> What is your name?"
name = gets.chomp

if name[name.length-1] == "!"
  puts "HELLO #{name.chop.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end
