# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?  An array of numbers or strings.

# What is the output? (i.e. What should the code return?)

#An array of the most frequent values

# What are the steps needed to solve the problem?

#Convert array into database (hash)

#Count every instance of element (key) within array and translate occurance to count (value) within database.

#Compare counts to each other and return "mode" elements in a new array


# 1. Initial Solution
=begin
def mode(array)
  mode_hash = Hash.new
  array.each {|x| mode_hash[x] = 0}
  mode_hash.each do |k, v|
    mode_hash[k] = array.count(k)
  end
  new_array = []
  mode_hash.each do |k, v|
    if frequency == mode_hash.values.max
    new_array << k
    end
  end
  return new_array
end
=end






# 3. Refactored Solution

def mode(array)
  mode_hash = Hash.new
  array.each {|object| mode_hash[object] = 0}
  mode_hash.each do |element, frequency|
    mode_hash[element] = array.count(element)
  end
  new_array = []
  mode_hash.each do |element, frequency|
    if frequency == mode_hash.values.max; new_array << element
    end
  end
  return new_array
end


# 4. Reflection