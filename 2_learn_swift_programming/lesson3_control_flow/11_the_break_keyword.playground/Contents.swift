import UIKit

//var str = "Hello, playground"
// The break keyword is a way to short-circuit a loop so it stops immediately.
// It works for all loop types, but is most commonly used in the while loop.
// (Since we don't know how many times while loops execute, it's good to have
// a way to exit so we don't get stuck.)

//Consider the following:
print("\nDie Roll Test:")
var dieRoll1: Int = 2
var dieRoll2: Int = 2

while(true) {
    dieRoll1 = Int(arc4random() % 6) + 1
    dieRoll2 = Int(arc4random() % 6) + 1
    print("\(dieRoll1), \(dieRoll2)")
    if dieRoll1 == 1 && dieRoll2 == 2 {
        break
    }
}

// Note: You don't have to know how arc4random() works quite yet, but just know that
// it returns a really large random number. Using % 6 and adding 1 ensures the result
// will be from 1 to 6 like on a die.

// This loop does exactly what our previous loop did, but it relies on the break keyword
// to halt. Because the condition of the loop is to execute while true, it will always
// pass the conditional test. This would be an infinite loop, if not for our break statement.
//
// In order to escape from the loop, the special keyword break is needed. As soon as we
// reach the break keyword, the loop ceases immediately, and no additional work is done.

// Practice with the Keyword Break:
// Write a while loop that "continuously flips two coins". The coin flips can be simulated
// by randomly assigning two Int values to 0 or 1 (ex: 0 is "heads", 1 is "tails"). Use the
// break keyword to exit the while loop if both coins are equal to tails.

print("\nCoin Flip Test:")
var coinFlip1: Int = 0
var coinFlip2: Int = 0

while(true) {
    coinFlip1 = Int(arc4random() % 2)
    coinFlip2 = Int(arc4random() % 2)
    print("\(coinFlip1), \(coinFlip2)")
    if coinFlip1 == 1 && coinFlip2 == 1 {
        break
    }
}

// Practice: The Break Keyword:
// Print the even numbers from 1 to 500 (inclusive). Use a while loop and the break keyword.
// The code for the loop has been provided for you; but you'll need to modify it to break
// when appropriate.
//
// Hint: Your knowledge of operators and boolean expressions will come in handy.

print("\nPrint Even Numbers Test:")
var number = 0

while(true) {
    number += 2
    print(number)
    // ↓ Your code goes here ↓
    if number >= 500 {
        break
    }
}
