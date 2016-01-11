# Numbers to Commas Solo Challenge

# I spent [1] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

=begin

What is the input?

A single integer

What is the output? (i.e. What should the code return?)

A string of that integer with a comma splitting the hundreds from the thousands, etc.

What are the steps needed to solve the problem?

Convert the integer into a string, reverse the string, break the string into 3 character chunks until there are no more, add a comma before each of the chunks, combine the chunks back together, reverse the string again, return the string.

=end


# 1. Initial Solution

def separate_comma(num)
  reverse_string = num.to_s.reverse!
  split_reverse_string = reverse_string.split('')
  counter = 2
  while counter < reverse_string.length - 1
    split_reverse_string[counter] = "#{split_reverse_string[counter]},"
    counter += 3
  end
  final_string = split_reverse_string.join.reverse!
  return final_string
end


# 2. Refactored Solution

def separate_comma(num)
  nums_reversed_array = num.to_s.chars.to_a.reverse
  counter = 2
  while counter < num.to_s.length - 1
    nums_reversed_array[counter] = "#{nums_reversed_array[counter]},"
    counter += 3
  end
  final_string = nums_reversed_array.join.reverse
  p final_string
end


# 3. Reflection

=begin

What was your process for breaking the problem down? What different approaches did you consider?

I originally thought that the problem was only for inputs which were ones followed by zeros (such as the ones in the examples) so I initially attacked the problem using gsub.  I planned to reverse the string and then use gsub to add the commas, and that worked for numbers like 1000000, but not for other integers.  I attacked the problem again using split and a while loop, and found success with that.

Was your pseudocode effective in helping you build a successful initial solution?

Yes, it was very helpful because it helped me break down areas to solve the problem step by step.  I also felt because my initial impression of the problem was wrong, it was easier to edit the steps with my pseudocode framework in place than to have to start the solution from scratch again.  I ended up splitting all of the characters up instead of splitting them into 3 character chunks, but it still mostly followed what I had outlined.

What new Ruby method(s) did you use when refactoring your solution?

I used .chars and .to_a to take all of the characters from the string I convert from the input at align them into an array.  It is a bit cleaner than my other method of splitting the characters and making the method a reversed string in separate lines.

Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?

The refactored solution does not really drastically change the way that the code works.  I have mostly found success using methods I find on Ruby Docs, but some are easier to get used to than others.  This one was relatively simple to implement.

How did you initially iterate through the data structure?

I initially only had it is a string when I was using gsub and separated my data with spaces in order to prevent gsub from rereading data, but when I switched to split, I iterated over the data in an array using a while loop.

Do you feel your refactored solution is more readable than your initial solution? Why?

I believe it is a bit easier to figure out what is going on step-by-step for a beginner in the original solution.  However, to an experienced rubiest, the code in the refactored solution is a lot cleaner.

=end
