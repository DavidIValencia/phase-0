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
var array = []
var separateComma = function(number){
 var string = number.toString().split("").reverse();
  for(var x = 3; x < (string.length - 1); x += 3){
      (string[x] = string[x].concat(","));
  };

  reverseString.join("").reverse();
  return string;
};

var array = [1,2,3]
// var num = 123462032456;
// console.log(separateComma(num));
// Your Own Tests (OPTIONAL)




// Reflection