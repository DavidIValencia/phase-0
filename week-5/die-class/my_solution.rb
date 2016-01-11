# Die Class 1: Numeric

# I worked on this challenge [by myself]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: naming an object in our class as Die.new(the number of sides we want it to have)
# Output:  An object within our class that can be rolled and returns the number of sides it has if you call sides on it.
# Steps:  Set up the class dice, make an instance variable that sets up the number of sides, make an attr_reader for sides, have a instance variable roll that uses sides in order to rng and then call the number that has been selected.


# 1. Initial Solution

=begin
class Die
  def initialize(sides)
    if sides <= 0
      raise ArgumentError.new("Less than 1 side")
    end
    @sides = sides
  end

  def sides
    @sides
  end

  def roll
    return rand(1..sides)
  end
end
=end




# 3. Refactored Solution

class Die
  def initialize(sides)
    if sides <= 0
      raise ArgumentError.new("Less than 1 side")
    end
    @sides = sides
  end

  attr_reader :sides

  def roll
    return rand(1..sides)
  end
end

# 4. Reflection
=begin

What is an ArgumentError and why would you use one?

An argument error is a message to the class that it should stop running and display a message to the user about why the error occurred.  This is useful as it allows us to restrict users from passing the wrong arguments to classes.

What new Ruby methods did you implement? What challenges and successes did you have in implementing them?

I implemented initialize and rand(), both of which I understand pretty well and used pretty easily.  Rand() is really cool because there are a lot of ways that you can play around with it, and it is really useful for statistics.

What is a Ruby class?

A class is a group that contains objects.  All things in Ruby are in the SuperClass Object, which can be drilled-down into other classes.

Why would you use a Ruby class?

Ruby classes are great for setting up work that is slightly unique, but ultimately similar.  It is, in theory, possible to tell both a bird and a hot air-balloon to fly (considering the computer had control of them.)  These different objects have similar aspects, and could make up a theoretical class of flying things.

What is the difference between a local variable and an instance variable?

A local variable sits in the method that it is used in.  An instance variable is a variable which is defined within a class.  Instance variables can have different copies of themselves which are accessible in the class.  These variables are also subject to class methods.

Where can an instance variable be used?

An instance variable can be used to define an object in a class.  For example, if the class was Rocks, the instance variable instance could be geode.  Geode could then be subject of all of the methods that have been given to rocks, and you have the ability to customize geode within the class.

=end
