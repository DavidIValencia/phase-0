# Your Names
# 1) David Valencia
# 2) Jerry Evans

# We spent [#] hours on this challenge.

# Bakery Serving Size portion calculator.


# REFACTORING:
# 1. Readability
# 2. Logic



def ingridients_calculator(item_to_make, num_of_ingredients)

  # Defines a variable error_counter and gives it a default value of 3.
  # Library is a hash that holds baked goods and the number that is needed make a baked good
  ingredients_per_baked_good = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  # library is the _____________
  # With a hash, you want to talk about the key value relationship.

  #error_counter = 3


  # container = []
  # list_of_studnets = []


  # iterration over the library
  # error counter = minus one if the value of the baked good key is not equal to the item to make
  # Checking if the bakery can make the requested item.
  #ingredients_per_baked_good.each do |food|
    #if ingredients_per_baked_good[food] != ingredients_per_baked_good[item_to_make]
     # error_counter += -1
    #end
  #end

  # raises argument error for an invalid input using iterration
  #if error_counter > 0
  # if ingredients_per_baked_good[item_to_make].kind_of?(Integer) == false
  #   raise ArgumentError.new("#{item_to_make} is not a valid input")
  # end


  # if ingredients_per_baked_good.includes?(item_to_make)
  #   raise ArgumentError.new("#{item_to_make} is not a valid input")
  # end

  raise ArgumentError.new("#{item_to_make} is not a valid input") unless  ingredients_per_baked_good.includes?(item_to_make)
  # Anything that comes after your raise, can be considered an ELSE block.
  # if false, raise error
  # else, do all logic.



  # Get the number of ingredients needed to make the desired item
  number_of_ingirdients_required = ingredients_per_baked_good[item_to_make]
  # my_array[index] => element

  # values_at returns an array of all values for the matching key.
  # HOWEVER, can a hash have duplicate keys? - No.
  # ["apples", "oranges"][0] => "apples"
  # values_at("cake") => [5]
  # [5][0] => 5



  # This is how they find the remainder of the igridients
  remaining_ingredients = num_of_ingredients % number_of_ingirdients_required


  #Using a case method to return how many of the ingridients were converted into baked goods, and how many leftover ingridients there are

  # D. R. Y.

#   return_string = "Calculations complete: Make #{num_of_ingredients / number_of_ingirdients_required} of #{item_to_make}."


#   case remaining_ingredients
#   when 0
#     return return_string
#   else
#     return return_string + " You have #{remaining_ingredients} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
#   end
# end



    return_string = "Calculations complete: Make #{num_of_ingredients / number_of_ingirdients_required} of #{item_to_make}."

  if remaining_ingredients > 0
    return_string += " You have #{remaining_ingredients} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
  end

  return return_string

end




# DRIVER CODE:
# ------------


p ingridients_calculator("pie", 7)
p ingridients_calculator("pie", 8)
p ingridients_calculator("cake", 5)
p ingridients_calculator("cake", 7)
p ingridients_calculator("cookie", 1)
p ingridients_calculator("cookie", 10)
# p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection

=begin

What did you learn about making code readable by working on this challenge?

I learned that it is important to due for inheritance reasons.  Often other programmers will come in with no context of the code that they see in front of them.  Making the code readable to other developers is important for maintaining an efficient team.

Did you learn any new methods? What did you learn about them?

I learned about includes?, which allows you to access a hash and see if something matches one of the elements.

What did you learn about accessing data in hashes?

I learned about the includes method, and got a lot more practice with methods interacting with hashes during this challenge.

What concepts were solidified when working through this challenge?

The biggest thing that was solidified was my understanding of how to refactor my code.  First do readability because it doesn't break the code, and makes things a lot smoother.  Next, try and simplify the steps you do so you don't repeat yourself in the code.

=end

