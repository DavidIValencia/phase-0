# I worked on this challenge [by myself, with: ].


# Your Solution Below

def valid_triangle?(a, b, c)
  # Your code goes here!
  if a == 0 or b ==0 or c == 0; return false
  elsif a + b <=c; return false
  elsif c + b <=a; return false
  elsif a + c <=b; return false
  elsif a == b; return true
  elsif a == c; return true
  elsif c == b; return true
  elsif a**2 + b**2 == c**2; return true
  elsif c**2 + b**2 == a**2; return true
  elsif a**2 + c**2 == b**2; return true
  else; return false
  end
end