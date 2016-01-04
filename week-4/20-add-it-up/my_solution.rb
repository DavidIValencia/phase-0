# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [with: ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input:  array of numbers
# Output:  sum of those numbers
# Steps to solve the problem.
# Iterate through the array and then for eah element, add to the total then return the total.


# 1. total initial solution
#def add_it_up(arr)
#  total = 0
#  arr.each do |num|
#    total += num
#  end
#  num
#end



# 3. total refactored solution
  def total(arr)
  arr.reduce(:+)
  end



# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: array
# Output: Capitalized first element, elements with space behind them, last element has a period.
# Steps to solve the problem.



# 5. sentence_maker initial solution

=begin
def sentence_maker(arr)
  x = "#{arr.shift.capitalize} "
  y = "#{arr.pop}."
  string = ""
  string << x
  arr.each {|z| string << "#{z} "}
  string << y
  string
end
=end



# 6. sentence_maker refactored solution
def sentence_maker (arr)
  arr.join(' ').capitalize << "."
end