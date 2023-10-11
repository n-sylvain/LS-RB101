require 'date'

puts Date.civil               # prints "-4712-01-01"
puts Date.civil(2016)         # prints "2016-01-01"
puts Date.civil(2016, 5)      # prints "2016-05-01"
puts Date.civil(2016, 5, 13)  # prints "2016-05-13"
puts Date.civil(2016, 5, 13, Date::JULIAN)
