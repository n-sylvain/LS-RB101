def print_in_box(text)
  box_width = text.size + 4
  horizontal_line = "+" + "-" * (text.size + 2) + "+"
  empty_line = "|" + " " * (text.size + 2) + "|"
  text_line = "| " + text + " |" 

  puts horizontal_line
  puts empty_line
  puts text_line
  puts empty_line
  puts horizontal_line
end

print_in_box("Hello!")
print_in_box('To boldly go where no one has gone before.')
print_in_box('')

def print_in_box_solution(message)
  horizontal_rule = "+#{'-' * (message.size + 2)}+"
  empty_line = "|#{' ' * (message.size + 2)}|"

  puts horizontal_rule
  puts empty_line
  puts "| #{message} |"
  puts empty_line
  puts horizontal_rule
end

