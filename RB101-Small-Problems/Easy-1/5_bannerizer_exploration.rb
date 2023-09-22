def print_in_box(text)
  max_width = 76 # Adjusted to leave space for box edges and padding
  horizontal_line = "+" + "-" * (max_width + 2) + "+"

  # Split the text into words
  words = text.split

  # Initialize an array to hold lines of wrapped text
  lines = []

  current_line = ""
  words.each do |word|
    if current_line.length + word.length + 1 <= max_width
      # If adding the word doesn't exceed the maximum width, add it to the current line
      current_line += (current_line.empty? ? "" : " ") + word
    else
      # If adding the word exceeds the maximum width, start a new line
      lines << current_line
      current_line = word
    end
  end

  # Add the last line
  lines << current_line unless current_line.empty?

  # Print the box and wrapped lines
  puts horizontal_line
  lines.each do |line|
    padded_line = "| #{line.ljust(max_width)} |"
    puts padded_line
  end
  puts horizontal_line
end

# Example usage:
print_in_box("This is a long message that needs to be wrapped to fÒt inside the box of a standard terminal window. It should wrap at the end of each line and still be displayed neatly within the box.")
print_in_box("Hello!")