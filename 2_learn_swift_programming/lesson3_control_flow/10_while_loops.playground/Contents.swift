import UIKit

var str = "Hello, playground"

// While loops are a simple variety of a loop — they only test a condition.
// If the boolean expression is not true when we first start the loop, the
// loop will not execute its code block. While loops are preferred when we
// don't know exactly how many times a loop will run.

var i = 0

while (i < 10) {
    print(i)
    i += 1
}

// The while loop is simply a block with a test condition to guard entry into
// the block. Loop iterator variables can't be initialized inside of the loop's
// conditions like a for loop, so sometimes initialization outside of the loop
// may be necessary (var i = 0 in the above example).

// Here's an example of a while loop which will roll 2 dice and print their values.
// The loop ends when both dice are rolled as the value 1:

var dieRoll1: Int = 2
var dieRoll2: Int = 2

while(!(dieRoll1 == 1 && dieRoll2 == 1)) {
    dieRoll1 = Int(arc4random() % 6) + 1
    dieRoll2 = Int(arc4random() % 6) + 1
    print("\(dieRoll1), \(dieRoll2)")
}

// Practice: While Loops
// Now write a while loop that prints the even numbers from 1 to 1000 (inclusive).
// While you could just do this with a for loop, try using a while loop.
//
// For example, if we were printing even numbers from 1 to 10,
// we'd get the following output.
    //2
    //4
    //6
    //8
    //10

var j = 2

while(j < 101) {
    print(j)
    j += 2
}
