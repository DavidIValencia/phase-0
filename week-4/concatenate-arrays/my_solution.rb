# Concatenate Two Arrays

# I worked on this challenge [by myself, with: ].


# Your Solution Below

def array_concat(array_1, array_2)
  x = []
  array_1.each {|y| x << y}
  array_2.each {|y| x << y}
  return x
end