import UIKit

var str = "Hello, playground"

// There's one more variation on the while loop you should know about, repeat-while.
// Repeat while guarantees that the body will execute at least once. Unlike a while
// loop, the condition is checked at the end of each iteration.

print("\n\tCountdown Example:")
var countdown = 10

repeat {
    print(countdown)
    countdown -= 1
} while countdown > 0
print("Lift off!")

// FYI: repeat-while in Swift is the exact same thing as
// do-while in other programming languages.

// Quiz Question:
// How many times does the following loop execute?

var i = 1
repeat {
    print("Hello, world!")
    i += 1
} while i < 0
// Our loop will run once.
// Repeat while guarantees that the body will execute at least once.
