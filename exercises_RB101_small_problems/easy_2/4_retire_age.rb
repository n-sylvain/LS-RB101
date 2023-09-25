puts "> What is your age?"
age = gets.chomp.to_i
puts "> At what age would you like to retire?"
retire = gets.chomp.to_i

current_year = Time.now.year
year_to_go = current_year + retire

puts "It's #{current_year}. You will retire in #{year_to_go}."
puts "You have only #{retire - age} years of work to go!"