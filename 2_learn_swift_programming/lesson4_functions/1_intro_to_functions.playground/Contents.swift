import UIKit

// var str = "Hello, playground"
// print(“Some text”) is an example of calling the print() function which
// takes a String and prints it out.
// arc4random() is an example of a function that generates a random number
// (useful for rolling dice!).

// Why would we need to use functions for our code? Consider the club
// screening example from the previous lesson. When screening different
// clubgoers, we simply uncommented each group of variables. If we wanted to
// screen all the clubgoers at once, we might do something like the following.


var name = "Ayush"
var age = 19
var onGuestList = true
var knowsTheOwner = true

if onGuestList && age >= 21 {
    print("\(name), come party with us!")
} else if knowsTheOwner {
    print("\(name), we'll have to take you to the owner.")
} else {
    print("Sorry, \(name), maybe you can go play Bingo with the Android team.")
}

name = "Gabrielle"
age = 29
onGuestList = true
knowsTheOwner = true

if onGuestList && age >= 21 {
    print("\(name), come party with us!")
} else if knowsTheOwner {
    print("\(name), we'll have to take you to the owner.")
} else {
    print("Sorry, \(name), maybe you can go play Bingo with the Android team.")
}

name = "Chris"
age = 32
onGuestList = false
knowsTheOwner = false

if onGuestList && age >= 21 {
    print("\(name), come party with us!")
} else if knowsTheOwner {
    print("\(name), we'll have to take you to the owner.")
} else {
    print("Sorry, \(name), maybe you can go play Bingo with the Android team.")
}

// Yikes! Not only is the code a mile long, but if the club ever needs to change its rules,
// you'd need to remember to update all the conditions. By the end of this lesson, you'll
// be able to use functions to make your code much more readable and less prone to error.


