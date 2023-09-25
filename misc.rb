def string_lengths(sentence)
  strings = sentence.split

  strings.map { |chars| chars.length }
end

p string_lengths("to be or not to be")