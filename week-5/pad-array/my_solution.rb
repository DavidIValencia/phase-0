# Pad an Array

# I worked on this challenge [with: Mollie Stein]

# I spent [1.5] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?  The input is an array, a minimum size value, and a padding value
# What is the output? (i.e. What should the code return?) The code should return an array with padding values added if the minimum size is greater than the original size of the array.  If no value is added, it should pad with nil.
# What are the steps needed to solve the problem?  The steps to solving this problem is to determine if the length of array is larger than the min_size, returning it is it is, if it isn't, adding padding values to the array equal to the number of spots defined by the minimum size value and then returning the array.  For the non-destructive form, the steps should be similar, however, the array should be cloned into a new array and that array should be returned.


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

=begin
4. Reflection
Were you successful in breaking the problem down into small steps?

We were pretty good at breaking the problem down into small steps.  The biggest thing that slowed us down was understanding the difference between destructive and non-destructive methods.  That made it hard to adapt the destructive method to the non-destructive one.

Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?

It was easy to translate it into the code for the destructible method.  The other method did not align with our pseudocode as well, and took longer to fabricate.  Once we figured out the extra step though, it was simple to write out.

Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?

The biggest error we ran into was in the non-destructible method.  We would run into the failure where the input data was being altered, even though we did not think that we were altering it.  We defined a separate array for the new information to be manipulated in, which solved the error.

When you refactored, did you find any existing methods in Ruby to clean up your code?

We found the method fill, which cleaned up our code a lot. It basically does the padding for us without us having to define a bunch of extra steps.

How readable is your solution? Did you and your pair choose descriptive variable names?

When we refactored the code, we made it a lot more readable.  It could maybe be a bit more readable to a true outsider.

What is the difference between destructive and non-destructive methods in your own words?

Destructive methods alter the input that goes into them.  Non-destructive methods copy the information and then use that information to run.  In databases, destructive methods would be usable to changes values, and non-destructive would be good for extrapolating figures from the data.

=end
