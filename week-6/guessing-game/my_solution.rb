# Build a simple guessing game


# I worked on this challenge [by myself].
# I spent [1] hours on this challenge.

# Pseudocode

# Input: An integer called answer, a guess integer, the solved method with returns true if the last guess was correct and false otherwise
# Output: :low, :high, :correct, true, and false
# Steps:


# Initial Solution

=begin
class GuessingGame
  def initialize(answer)
    @answer = answer
    @right_answer = false
  end

  attr_reader :answer
  attr_accessor :right_answer

  def guess(turn)
    if turn > answer; @right_answer = false
      return :high
    elsif turn == answer
      @right_answer = true
      return :correct
    else
      @right_answer = false
      return :low
    end
  end

  def solved?
   return right_answer
  end
end
=end





# Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
    @right_answer = false
  end

  attr_reader :answer
  attr_accessor :right_answer

  def guess(turn)
    if turn > answer; @right_answer = false
      return :high
    elsif turn == answer
      @right_answer = true
      return :correct
    else
      @right_answer = false
      return :low
    end
  end

  def solved?
   return right_answer
  end
end





# Reflection

=begin

How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?

Instance variables represent real world objects because they have individual characteristics.  Much like real world objects, these variables can be modified and maintained.  MEthods represent these changes or ways for these objects to behave.

When should you use instance variables? What do they do for you?

Instance variables are important because they allow you to have a populated directory of instances you can call on.  If you need to store lots of information where every input you store is unique, but some have similar characteristics, this is also a good method.

Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?

Using flow control is utilizing the fact that Ruby reads information and expects to process it a specific way.  When using classes, the best way to pass information is with instance variables.  I did not have right_answer as an instance variable from the start, and it took me some time to figure out why my variable was not going into my other methods.

Why do you think this code requires you to return symbols? What are the benefits of using symbols?

I think that this code requires you to return symbols for a few reasons.  The first is that they are faster than returning strings and other objects.  The second is that they represent an immutable object much like the concepts, as we've defined them, of high, correct, and low.

=end
