# Reverse Words


# I worked on this challenge [by myself].
# This challenge took me [1] hours.

# Pseudocode

=begin
Input is any number of string arguments
Output is each of those arguments returned reverse
Set up a method that takes any number of string arguments.  Pass those arguments into the function, and reverse them.  Return the reversed string.
=end


# Initial Solution

def reverse_words(string)
  substrings = string.split(' ')
  array = []
  substrings.length.times do |i|
    array[i] = substrings[i].reverse
  end
  x = array.join(' ')
  return x
end



# Refactored Solution

def reverse_words(words_to_reverse)
  words_to_reverse_list = words_to_reverse.split(' ')
  reversed_words = []
  words_to_reverse_list.length.times do |i|
    reversed_words[i] = words_to_reverse_list[i].reverse
  end
  return reversed_words.join(' ')
end



# Reflection



=begin
What concepts did you review in this challenge?

I reviewed how to iterate through an array and how ruby logically reverses objects.  It was challenging at first to work through this assignment as I was reversing the entire string instead of the individual words within, but I eventually figured it out.

What is still confusing to you about Ruby?

There are bits of code that I do not see the logic on from time to time, but that is mostly just me having to solve everything out.

What are you going to study to get more prepared for Phase 1?

I am going to focus primarily on js.
=end
