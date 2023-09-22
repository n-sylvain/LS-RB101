puts "Enter a noun: "
noun = gets.chomp!
puts "Enter a vers: "
verb = gets.chomp!
puts "Enter an adjective: "
adjective = gets.chomp!
puts "Enter an adverb: "
adverb = gets.chomp!

puts "Do you #{verb} your #{noun} #{adverb}? That's hilarious!"

=begin
sentence_1 = "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"
sentence_2 = "The #{adjective} #{noun} #{verb}s #{adverb} over the lazy dog."
sentence_3 = "The #{noun} #{adverb} #{verb}s up #{adjective} Joe's turtle."

puts [sentence_1, sentence_2, sentence_3].sample
=end