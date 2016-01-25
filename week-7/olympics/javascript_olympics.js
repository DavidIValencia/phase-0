 // JavaScript Olympics

// I paired [by myself, with:] on this challenge.

// This challenge took me [#] hours.


// Warm Up




// Bulk Up

var bulkUp = function(array){
   for (var i = 0; i < (array.length-1); i++) {
     // array[i].prototype.win = array[i].name + " won the " + array[i].event + "!";
     return array[i].name
   }
}

var SarahHughes = {
  name : "Sarah Hughes",
  event : "Ladies Singles"
};

bulkUp([SarahHughes]);
console.log(SarahHughes.win)




// var bulkUp = function (athlete) {

//   athlete.name athlete.event
// }



// Jumble your words

// var reverseString = function(string) {
//   var backwardsString = string.split("").reverse().join("");
//   return console.log(backwardsString);
// }

// reverseString("Ruby")


// 2,4,6,8

// var returnEven = function(array) {
//   var evenArray = []
//   for (var i = 0; i < (array.length-1); i++) {
//   if (array[i] % 2 === 0) {
//     evenArray.push(array[i]);
//   }
// }
//   console.log(evenArray);
// }

// returnEven([1,2,3,4,5])

// "We built this city"

// function Athlete(name, age, sport, quote){
//   this.name = name;
//   this.age = age;
//   this.sport = sport;
//   this.quote = quote;
//     };

// var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
// console.log(michaelPhelps.constructor === Athlete)
// console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)


// Reflection