// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: .

// Pseudocode

//input:  an integer
//output:  a string of numbers with commas
//Steps:  Define separateComma(), reverse the input, split into an array, set up a counter that counts every three positions, put a comma in that value, rejoin it and covert into a string.

// Initial Solution

// var separateComma = function(number){
//   var reverseString = [];
//   var backToForward = [];
//   var string = number.toString();
//   for(var i = (string.length - 1); i > -1; i--){
//      reverseString.push(string[i]);
//   };
//   for(var x = 3; x <= (reverseString.length - 1); x += 3){
//     reverseString[x] = reverseString[x].concat(",");
//   };

//   for(var z = (reverseString.length - 1); z > -1; z--){
//      backToForward.push(reverseString[z]);
//   };

//   return backToForward.join("");
// };

// var num = 12346202020202020204;
// console.log(separateComma(num));

// Refactored Solution
var separateComma = function(number){
var string = number.toString().split("").reverse();
 for(var x = 3; x <= (string.length - 1); x += 3){
     string[x] = string[x].concat(",");
 };

return string.reverse().join("");
};

var num = 123462032456;
console.log(separateComma(num));
// var num = 123462032456;
// console.log(separateComma(num));
// Your Own Tests (OPTIONAL)




// Reflection
/*What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?

It seems as though the biggest difference when using js for something like this is that you really have to break down what the computer is doing in order for your code to flow logically.  You kind of get to cheat around that knowledge by using Ruby, but js is much less forgiving of not being able to be fundamentally sound in your thinking because there aren't just methods for every situation.

What did you learn about iterating over arrays in JavaScript?

I learned that it is a bit longer to write out, but a very similar concept of iterating over arrays in Ruby.  The biggest thing that I notice to be different is the non-destructive nature of js and how you have to act because of it.

What was different about solving this problem in JavaScript?

You have to constantly be transitioning your work from one object to the next in order to preserve it.  It is almost like trying to chain bits of logic together in order for the entire statement to make sense.  In Ruby, you do not have to constantly be defining new variables to keep your code moving forward.

What built-in methods did you find to incorporate in your refactored solution?

We did not utilize any additional methods to use in refactoring this solution.


*/