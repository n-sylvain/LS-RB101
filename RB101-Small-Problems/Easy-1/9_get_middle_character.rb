def center_of(string)
  middle = string.size / 2
  #string.split("")
  return puts string[middle] if string.size.odd?
  puts string[middle-1,2]
end

center_of("I love ruby")
center_of("Launch School")
center_of("Launch")
center_of("x")

