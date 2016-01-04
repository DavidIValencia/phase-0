
# Leap Years

# I worked on this challenge [by myself].


# Your Solution Below

def leap_year?(x)
  if x%400 == 0; return true
  elsif x%100 ==0; return false
  elsif x%4 == 0; return true
  else; return false
  end
end