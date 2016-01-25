// Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:  Your mission is to beat the dealer at a game of blackjack without busting.  Aces are always 11.
// Overall mission:  A dealer and you are each dealt two cards out of a deck comprised of an infinite number of cards.  Your objective is to have a higher score than the dealer by flipping your cards, but not to go over 21.
// Goals:  See the cards that you are dealt and then decide whether to hit or to stay.  Try to end up with a higher combined score than the dealer.
// Characters: You and the dealer
// Objects: you, dealer
// Functions: dealing cards, staying, hitting a card, dealing cards to the dealer, counting who is the winner.

// Pseudocode

//Set up the dealer and the player as objects that have empty arrays.  Initialize the game and automatically deal two cards to the player and the dealer.  Reveal one of the dealers cards to the player.  The player hits once.  If hit, add another card and count if there is a bust.  If there is a bust, end the game.  Once the player stays, deal out to the dealer if their cards are lower than 17 in value.  End the game by the dealer busting, winning, or losing.


// Initial Code

/*var player = []
var dealer = []

function dealCard(person) {
var card = Math.random();
for (i=1; i<2; i++) {if (card < 0.076923076923) {person.push("2")}
else if (card < 0.15384615384) {person.push("3")}
else if (card < 0.23076923076) {person.push("4")}
else if (card < 0.30769230769) {person.push("5")}
else if (card < 0.38461538461) {person.push("6")}
else if (card < 0.46153846153) {person.push("7")}
else if (card < 0.53846153846) {person.push("8")}
else if (card < 0.61538461538) {person.push("9")}
else if (card < 0.6923076923) {person.push("10")}
else if (card < 0.76923076923) {person.push("Jack")}
else if (card < 0.84615384615) {person.push("Queen")}
else if (card < 0.92307692307) {person.push("King")}
else {person.push("Ace")};
}}

function startGame() {
  dealCard(dealer);
  dealCard(player);
  dealCard(dealer);
  dealCard(player);
  console.log("Your Hand:");
  console.log(player);
  console.log();
  console.log("Dealer's showing card:");
  console.log(dealer[0]);
  console.log("")
}

function hit() {
  dealCard(player);
  var bustCounter = 0
  for (i=0; i<(player.length); i++) {if (player[i] === "2") {bustCounter += (2)}
  else if (player[i] === "3") {bustCounter += (3)}
  else if (player[i] === "4") {bustCounter += (4)}
  else if (player[i] === "5") {bustCounter += (5)}
  else if (player[i] === "6") {bustCounter += (6)}
  else if (player[i] === "7") {bustCounter += (7)}
  else if (player[i] === "8") {bustCounter += (8)}
  else if (player[i] === "9") {bustCounter += (9)}
  else if (player[i] === "10") {bustCounter += (10)}
  else if (player[i] === "Jack") {bustCounter += (10)}
  else if (player[i] === "Queen") {bustCounter += (10)}
  else if (player[i] === "King") {bustCounter += (10)}
  else {bustCounter += (11)}
  }
  if (bustCounter > 21) {console.log(bustCounter); console.log("You bust!"); return}
  else {console.log("Your Hand:"); console.log(player)}}

function stay() {
  var bustCounter = 0;
  for (i=0; i<(dealer.length); i++) {if (dealer[i] === "2") {bustCounter += (2)}
  else if (dealer[i] === "3") {bustCounter += (3)}
  else if (dealer[i] === "4") {bustCounter += (4)}
  else if (dealer[i] === "5") {bustCounter += (5)}
  else if (dealer[i] === "6") {bustCounter += (6)}
  else if (dealer[i] === "7") {bustCounter += (7)}
  else if (dealer[i] === "8") {bustCounter += (8)}
  else if (dealer[i] === "9") {bustCounter += (9)}
  else if (dealer[i] === "10") {bustCounter += (10)}
  else if (dealer[i] === "Jack") {bustCounter += (10)}
  else if (dealer[i] === "Queen") {bustCounter += (10)}
  else if (dealer[i] === "King") {bustCounter += (10)}
  else {bustCounter += (11)}}
  while (bustCounter < 17) {dealCard(dealer); {if (dealer[i] === "2") {bustCounter += (2)}
  else if (dealer[i] === "3") {bustCounter += (3)}
  else if (dealer[i] === "4") {bustCounter += (4)}
  else if (dealer[i] === "5") {bustCounter += (5)}
  else if (dealer[i] === "6") {bustCounter += (6)}
  else if (dealer[i] === "7") {bustCounter += (7)}
  else if (dealer[i] === "8") {bustCounter += (8)}
  else if (dealer[i] === "9") {bustCounter += (9)}
  else if (dealer[i] === "10") {bustCounter += (10)}
  else if (dealer[i] === "Jack") {bustCounter += (10)}
  else if (dealer[i] === "Queen") {bustCounter += (10)}
  else if (dealer[i] === "King") {bustCounter += (10)}
  else {bustCounter += (11)}};
  console.log("Player's Hand")
  console.log(player);
  console.log("Dealer's Hand")
  console.log(dealer)
  }

}
*/



// Refactored Code

var player = []
var dealer = []

function dealCard(person) {
var card = Math.random();
if (card < 0.076923076923) {person.push("2")}
else if (card < 0.15384615384) {person.push("3")}
else if (card < 0.23076923076) {person.push("4")}
else if (card < 0.30769230769) {person.push("5")}
else if (card < 0.38461538461) {person.push("6")}
else if (card < 0.46153846153) {person.push("7")}
else if (card < 0.53846153846) {person.push("8")}
else if (card < 0.61538461538) {person.push("9")}
else if (card < 0.6923076923) {person.push("10")}
else if (card < 0.76923076923) {person.push("Jack")}
else if (card < 0.84615384615) {person.push("Queen")}
else if (card < 0.92307692307) {person.push("King")}
else {person.push("Ace")};
}

function startGame() {
  dealCard(dealer);
  dealCard(player);
  dealCard(dealer);
  dealCard(player);
  console.log("Your Hand:");
  console.log(player);
  console.log();
  console.log("Dealer's showing card:");
  console.log(dealer[0]);
  console.log("")
}

function hit() {
  dealCard(player);
}

function count(person) {
  var bustCounter = 0
  for (i=0; i<(person.length); i++) {if (person[i] === "2") {bustCounter += (2)}
  else if (person[i] === "3") {bustCounter += (3)}
  else if (person[i] === "4") {bustCounter += (4)}
  else if (person[i] === "5") {bustCounter += (5)}
  else if (person[i] === "6") {bustCounter += (6)}
  else if (person[i] === "7") {bustCounter += (7)}
  else if (person[i] === "8") {bustCounter += (8)}
  else if (person[i] === "9") {bustCounter += (9)}
  else if (person[i] === "10") {bustCounter += (10)}
  else if (person[i] === "Jack") {bustCounter += (10)}
  else if (person[i] === "Queen") {bustCounter += (10)}
  else if (person[i] === "King") {bustCounter += (10)}
  else {bustCounter += (11)}}
  if (bustCounter > 21) {console.log(bustCounter); console.log("Bust!"); console.log(); bust = true}
  else {console.log("Your Hand:"); console.log(player); console.log("Dealer's hand"); console.log(dealer)}
}

function stay() {
  var bustCounter = 0
  for (i=0; i<(dealer.length); i++) {
  if (dealer[i] === "2") {bustCounter += (2)}
  else if (dealer[i] === "3") {bustCounter += (3)}
  else if (dealer[i] === "4") {bustCounter += (4)}
  else if (dealer[i] === "5") {bustCounter += (5)}
  else if (dealer[i] === "6") {bustCounter += (6)}
  else if (dealer[i] === "7") {bustCounter += (7)}
  else if (dealer[i] === "8") {bustCounter += (8)}
  else if (dealer[i] === "9") {bustCounter += (9)}
  else if (dealer[i] === "10") {bustCounter += (10)}
  else if (dealer[i] === "Jack") {bustCounter += (10)}
  else if (dealer[i] === "Queen") {bustCounter += (10)}
  else if (dealer[i] === "King") {bustCounter += (10)}
  else {bustCounter += (11)}
    }
  while (bustCounter < 17) {dealCard(dealer); {if (dealer[i] === "2") {bustCounter += (2)}
  else if (dealer[i] === "3") {bustCounter += (3)}
  else if (dealer[i] === "4") {bustCounter += (4)}
  else if (dealer[i] === "5") {bustCounter += (5)}
  else if (dealer[i] === "6") {bustCounter += (6)}
  else if (dealer[i] === "7") {bustCounter += (7)}
  else if (dealer[i] === "8") {bustCounter += (8)}
  else if (dealer[i] === "9") {bustCounter += (9)}
  else if (dealer[i] === "10") {bustCounter += (10)}
  else if (dealer[i] === "Jack") {bustCounter += (10)}
  else if (dealer[i] === "Queen") {bustCounter += (10)}
  else if (dealer[i] === "King") {bustCounter += (10)}
  else {bustCounter += (11)}};
  if (bustCounter > 21) {console.log(bustCounter); console.log("Bust!"); console.log(); bust = true}
  else {console.log("Your Hand:"); console.log(player); console.log("Dealer's hand"); console.log(dealer)}
  }
  }



startGame()
hit()
count(player)
stay()

// Reflection
//
/*What was the most difficult part of this challenge?

I think the most difficult of this challenge was completely going through and creating a working program in js and all of the associated troubleshooting that comes with it.  It is much harder to figure out what is going wrong in js than in Ruby because of the detail of the error that you get back.  I definitely struggled a lot with when to use global variables with this challenge, and manipulating control flows in js is something I intend to work on.

What did you learn about creating objects and functions that interact with one another?

I learned that objects in js that interact with functions are finicky to play around with, and having a set plan of attack from the get-go is very important to success.  Having my objects be arrays and having my functions interact with those arrays made it challenging to track the status of if either the dealer or the player had hit 21 or busted yet.  This made me have to use code in a repetitive manner, something I believe I could have avoided if I set the player and dealer up as objects with properties that corresponded to the cards they had and their current count.  By the time I had thought of that reasoning though, I was already well over my time-boxed allotment for this exercise and had to move on.

Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?

I did not use any new built-in methods.

How can you access and manipulate properties of objects?

You can access and manipulate the properties of objects by calling on the properties with a period or setting the properties with "=".  This allows you to store information within objects that can be readily called upon.  I believe this is something I could have used with far more success in this challenge, and I will try and implement more object properties in my future js solutions.  I especially had trouble trying to condense the code within my stay function, which I believe could have been iterated through far easier by using object properties.

*/