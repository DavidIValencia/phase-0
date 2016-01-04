# Factorial

# I worked on this challenge [by myself, with: ].


# Your Solution Below
def factorial(number)
  if number == 0; return 1
  end
  total = number
  while number > 1
    number -= 1
    total = total * number
  end
  total
end