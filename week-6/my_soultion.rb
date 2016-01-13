# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].
# I spent [1] hours on this challenge.

# Pseudocode

# Input: An array with values that are used for the die labels
# Output: A dice with those labels that can be rolled using a random number generator
# Steps:  Customize code from previous challenge to have new Argument Error for an empty array, set up labels similar to how sides was set up, give labels attr_reader, set up sides as returning the length of the labels array, make roll return a rng label counting from 1 to the length of the labels array.


# Initial Solution

=begin

class Die
  def initialize(labels)
    if labels == []
      raise ArgumentError.new("Error, empty array")
    end
    @labels = labels
  end

  attr_reader :labels

  def.sides
    return labels.length
  end

  def roll
    return labels[(rand(1..lables.length))]
  end
end

=end


# Refactored Solution

class Die
  def initialize(labels)
    if labels == []
      raise ArgumentError.new("Error, empty array")
    end
    @labels = labels
  end

  attr_reader :labels
  number_of_sides = labels.length

  def.sides
    return number_of_sides
  end

  def roll
    return labels[(rand(1..number_of_sides))]
  end
end



# Reflection
=begin

What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?

The biggest difference between this die challenge and the last one was that there was one extra method to define.  The challenge was not that different besides that and entering an array as the input.  I did not need to change much to arrive at an effective solution.

What does this exercise teach you about making code that is easily changeable or modifiable?

It teaches you that making code that is easily modifiable is really important.  I was able to quickly adapt my previous dice game code to meet the new requirements because it was straightforward.

What new methods did you learn when working on this challenge, if any?

I did not learn any new methods during this challenge.

What concepts about classes were you able to solidify in this challenge?

I was able to solidify a bit more about variables within classes and how instance variables come into effect.  It was nice to use my previous knowledge of working with arrays during this challenge.

=end
