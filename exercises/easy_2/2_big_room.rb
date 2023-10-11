puts "> Enter the length of the room in meters:"
length = gets.chomp
puts "> Enter the width of the room in meters:"
width = gets.chomp

square_metric = length.to_f * width.to_f
square_feet = sprintf("%.2f", square_metric * 10.7639)

puts "The area of the room is #{square_metric} square meters (#{square_feet} square feet)."

#a good practice is to define a constant on a number whose meaning is not immediately obvious
#use round() to round a number