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
