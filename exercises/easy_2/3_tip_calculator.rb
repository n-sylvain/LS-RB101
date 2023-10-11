puts "What is the bill?"
bill = gets.chomp.to_f
puts "What is the tip percentage?"
tip = gets.chomp.to_f / 100

tip_total = bill * tip
total = tip_total + bill

puts "the tip is $#{format("%.2f",tip_total)}"
puts "the total is $#{format("%.2f",total)}"