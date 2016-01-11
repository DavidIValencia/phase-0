# Research Methods

# I spent [4] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  source.select do |word|
    word.respond_to?('include?') && word.include?(thing_to_find)
  end
end

def my_hash_finding_method(source, thing_to_find)
  new_array = []
  source.select do |key, value|
    if
    value == thing_to_find
      new_array << key
    end
  end
  new_array
end


# Identify and describe the Ruby method(s) you implemented.
# My non refactoring :

# def my_array_finding_method(source, thing_to_find)
  # source.each
  # do |word|
  #   if word.respond_to?(:include?)
  #     if word.include?(thing_to_find)
  #       new_array << word
      # end
  #   end
  # end
  # new_array
# end
#
#On my first challenge it didn't respond to fixnum, which give me the biggest challenge ever.  I found a way to make sure if will respond to .include by using a statement that it would respond to .include then passed it with the .include.

# Person 2
# def my_array_modification_method!(source, thing_to_modify)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_modification_method!(source, thing_to_modify)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end
def my_array_modification_method!(source, thing_to_modify)
    source.each_index do |index|
        source[index] += thing_to_modify if source[index].is_a? Integer
    end
end

def my_hash_modification_method!(source, thing_to_modify)
    source.each_pair do |key, value|
        source[key] = value + thing_to_modify
    end
end
# Identify and describe the Ruby method(s) you implemented.
#
## M1. I implemented an Array Class build-in method #each_index. it works similar to #each except it passes the index of the element instead of the element itself. This method return an array.
# M2. I implemented a Hash Class build-in method #each_pair. This method calls the block for each key in the hash object (which is the source here), then passing the key-value as parameters into the block. After the work is done, this method return a hash.
#
#


# Person 3
def my_array_sorting_method(source)
  source.sort {|a,b| a.to_s <=> b.to_s }
end

def my_hash_sorting_method(source)
   source.sort_by {|key, value| value}
end

# Identify and describe the Ruby method(s) you implemented.
=begin
1. Identify and describe the Ruby method(s) you implemented
I used the enumerable sort and sort_by method.
2. Teach your accountability group how to use the methods
Sort:
To define a method that sorts an array without modifying the existing data, I used the enumerable method called sort...no suprises here! This method sorts the items by comparing themselves to eachother using with the <=> operator or logic supplied in a code block. Since the array i_want_pets contains strings and integers, the items cannot be compared directly with eachother using the <=> operator. I used a code block that converted the array items to strings then compared themselves to eachother. After all the items are sorted, this order is then applied to the original array. The returned array is a new object. The original array will not get permanently modified unless sort! (with a bang) is used.
Sort_by:
To define a method that sorts a hash, I used the enumerable method, sort_by. The sort_by method only requires one paramenter so I chose to sort by the hash value. The sort_by method returns a new array.
3. Share any tricks you used to find and decipher the Ruby Docs
No real tricks besides make sure you are looking at the right Ruby Doc version! I also skim the methods available for each class and write down ones that could be helpful for solving each problem.
=end


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.each do |x|
    if x.is_a? Integer
    elsif x.include?(thing_to_delete)
      source.delete(x)
    end
  end
  source
end

def my_hash_deletion_method!(source, thing_to_delete)
source.delete_if { |x, y| x == (thing_to_delete) }
end

# Identify and describe the Ruby method(s) you implemented.
#
# On the array, added a condition to filter out integer then moved on to the next part which is if it include thing to delete, then it will delete that word out of the source.  By modifying the source its a destructive delete.  At the end I returned the source.
#
#The hash was much easier because I didn't have to use .include.  I used a new method called .delete_if to delete something if it matches thing to delete exactly the same.

#  I used a few new built in methods.
# .delete_if
# .delete
# .is_a? Integer
# .is_a? String
# .respond_to
# I used delete if when I was doing the deleting something from the hash if it matches.
# .delete is the same but it doesn't have a condition.
# .is_a? is a great tool that can be used for so much things. Because you can check if its a Integer, String, Array, etc.  It goes well with a condition.
# Last is resond_to.  In order for me to no break the code is have a condition to make sure it can resond to .include on an Array that contain numbers.  Because You can't use .include on a Fixnum.
# #
# #


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
# With a lot of outside researching I was able to find more syntax I can use in my back pocket.  I do need more help on explaining my codes.  I learned that I'm not great at explaining myself but I'm also trying. So I started to code within my pseudocodes.  That why I can explain each step I used and did.
#
#
#

=begin


# Person 5

def my_array_splitting_method(input)
  integer_array = input.select{|element| element.to_s[/\d/]}
  other_values_array = input.select {|element| element.to_s[/\D/]}
return [integer_array,other_values_array]
end

def my_hash_splitting_method(pets_ages, cutoff_age)
  new_array = []
  under_age_array = []
  over_age_array = []
  hash_into_array = pets_ages.each {|pet, age| new_array << [pet,age]}
  hash_into_array.each do |animal|
    if animal[1] <= cutoff_age; under_age_array << animal
    else over_age_array << animal
    end
    end
    return [under_age_array,over_age_array]
end

=begin

my_array_splitting_method works by accepting an array an argument (input).  From there, the method looks at each element of the array and determines whether or not the element is an integer or non-integer using Regexp.  Regexp is a class method that compares strings to what digits they contain.  By converting each element to a string and using Regexp to determine if it is an integer (/\d/) or not (/\D/), we can split the elements into two distinct arrays in a non-destructive manner.

my_hash_splitting_method is a bit more drawn out than the previous method.  In this method, three arrays are first defined.  Each of the (key, value) pairs within pets_ages hash is converted into an array copied into another array on line 11 called hash_into_array.  This array is iterated over for each of its elements, animal.  Since we know that animal[1] is an integer because of the way pets_ages is input, we can compare animal[1] to the cutoff_age in order to separate the animal elements into their respective under_age_array or over_age_array.  Once this is complete, the over and under_age_arrays are returned in another array.

=end

