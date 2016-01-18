# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [with: Chris].
# I spent [1.5] hours on this challenge.

# Pseudocode

# Input: 16 digit number
# Output: true or false
# Steps: Set up a class with credit card, make sure the number entered has the right length, make the characters into an array, multiply the numbers of this array, see if the sum of the characters is divisible by 10, return true or false.


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard
  def initialize(number)
  @number = number
    if number.to_s.length != 16
      raise ArgumentError.new("Invalid 16-digit credit card number.")
    end
  end

  attr_reader :number

  def check_card
    credit_number_1 = number.to_s.chars.map(&:to_i)
    credit_number_2 = Array.new
    credit_number_1.each_index do |n|
      if n.even?
        credit_number_2[n] = (credit_number_1[n] * 2)
      else credit_number_2[n] = credit_number_1[n]
      end
    end
    credit_number_2.each_index do |n|
      if credit_number_2[n] > 9
         x = credit_number_2[n] - 10
         credit_number_2 << x
         credit_number_2[n] = 1
      end
    end
    if credit_number_2.inject{|sum,x| sum + x } % 10 == 0
    p true
    else; p false
    end

  end

end




# Refactored Solution

class CreditCard
  def initialize(credit_number)
  @credit_number = credit_number
    if credit_number.to_s.length != 16
      raise ArgumentError.new("Invalid 16-digit credit card number.")
    end
  end

  attr_reader :credit_number

  def check_card
    credit_array = credit_number.to_s.chars.map(&:to_i)
    doubled_array = Array.new
    credit_array.each_index do |index|
      if index.even?
        doubled_array[index] = (credit_array[index] * 2)
      else doubled_array[index] = credit_array[index]
      end
    end
    doubled_array.each_index do |index|
      if doubled_array[index] > 9
         x = doubled_array[index] - 10
         doubled_array << x
         doubled_array[index] = 1
      end
    end
    if doubled_array.inject{|sum, element| sum + element } % 10 == 0
    p true
    else; p false
    end

  end

end






# Reflection
=begin

What was the most difficult part of this challenge for you and your pair?

The most difficult part of this challenge for me and my pair was moving information between all of our objects.  We chose to make two arrays and pass information between them, so it was difficult for us at times to pass through driver code.

What new methods did you find to help you when you refactored?

The character method and the designation of (&:to_i) for map really helped out a lot to shorten the code.  The .even? method also came in handy.

What concepts or learnings were you able to solidify in this challenge?

I was able to solidify my understanding of destructive and non-destructive methods as well as more practice with iteration.  I also was able to work with classes again, which is code that I really like.

=end
