puts "Please write word or multiple words: "
words = gets.chomp

count_characters = words.delete(" ").length

puts "There are #{count_characters} characters in \"#{words}\""