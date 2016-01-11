# Calculate the mode Pairing Challenge

# I worked on this challenge [with: Dong Wook Seo]
# I spent 1 hours on this challenge.

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
=begin

Which data structure did you and your pair decide to implement and why?

We used a hash because we wanted to be able to assign a value (the number of times an element appear) to the different keys (elements).  This was a good method of keeping track of the times an element exists.

Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?

I was a bit more successful this time around.  I think the real key is to go back to the pseudocode if something is not working.  It is easier to organize yourself if you don't have to think on your feet.

What issues/successes did you run into when translating your pseudocode to code?

We were pretty successful at converting our psuedocode into actual code.  The difficult part is that we did not know the exact methods that we wanted to use for the function.  Outlining it in the pseudocode helped us look through ruby docs and find a good method quickly.

What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?

We used .values.max on the hash to simplify our code.  This was very easy to implement, and is a much more elegant solution than the one we had before.

=end
