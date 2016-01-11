# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 1. Initial Solution

=begin
def pad!(array, min_size, value = nil)
  if array.length >= min_size
    return array
  else
    (min_size - array.length).times do array << value
    end
  end
  return array
end

def pad(array, min_size, value = nil)
  new_array = []
  array.each do |name|
    new_array.push(name)
  end
  if new_array.length >= min_size
    return new_array
  else
    (min_size - new_array.length).times do  new_array.push(value)
    end
  end
  return new_array
end
=end


# 3. Refactored Solution

def pad!(array, min_size, value = nil)
  if array.length >= min_size
    return array
  else
  array.fill(value, array.length, (min_size - array.length))
  end
  return array
end

def pad(array, min_size, value = nil)
  new_array = []
  array.each do |name|
    new_array.push(name)
  end
  if new_array.length >= min_size
    return new_array
  else
    new_array.fill(value, new_array.length, (min_size - new_array.length))
  end
  return new_array
end

# 4. Reflection