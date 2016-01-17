# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:


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