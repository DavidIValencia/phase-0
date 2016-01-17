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