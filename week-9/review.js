//Concatenate Two Arrays

//Input, 2 arrays.  Output, one array.  The first step if to have an array feed to a new variable within js using iteration.  Then we can iterate over the next array into the variable in order to have all of the numbers in there.  The difference is instead of making a method, we'll be making a function.

//Inital Solution

/*function array_concat(arrayOne, arrayTwo) {
  var arrayThree = arrayOne;
  for (i = 0; i < arrayTwo.length; i++) {arrayThree.push(arrayTwo[i]);}
  return arrayThree
}
*/

//Refactored solution

function array_concat(arrayOne, arrayTwo) {
  var combinedArray = arrayOne;
  for (i = 0; i < arrayTwo.length; i++) {combinedArray.push(arrayTwo[i]);}
  return combinedArray
}

/*

Release 4: Reflect

What concepts did you solidify in working on this challenge?

I solidified some of the basic concepts from js and some of the fundamental differences between js and Ruby.  The biggest difference you can see in this challenge between the two languages is the non-destructive nature of js.

What was the most difficult part of this challenge?

The most difficult part of resolving this challenge was remembering to break each step in js out by line.  Initially I had the for loop on the same line as the var assignment, and I had to move it to it's own line.

Did you solve the problem in a new way this time?

Yes, instead of an empty array I made a new variable that was set to the first array.

Was your pseudocode different from the Ruby version? What was the same and what was different?

It was mostly the same, the biggest difference being that the approach I was taking was slightly different.  But besides that, it is pretty much the same foundational groundwork

*/