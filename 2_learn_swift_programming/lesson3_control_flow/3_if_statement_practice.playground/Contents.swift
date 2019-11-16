import UIKit

/*
The Club: Part 1
Your first task it to write an if statement that checks the value of onGuestList.
If it's true, then print a message welcoming the person to the club. Then write
another if statement to check if the value of onGuestList is false and print a
message nicely turning the person away.
*/

//var onGuestList: Bool = true
var name = "Kenderson"
var onGuestList_part1: Bool = true

if onGuestList_part1 {
    print("Welcome \(name). Please follow me.")
}

if !onGuestList_part1 {
    print("Go home \(name) and buy some social currency before you try coming back here again.")
}

/*
The Club: Part 2
We also need to check to ensure none of our guests are under the drinking age.
Modify your first if statements so that it checks if the person is both on
the guest list and if they're 21 or older.

Then modify your second if statement to check if the person is either not on
the guest list or if they're under 21.
*/

var onGuestList_part2: Bool = true
name = "Winifred"
var age: Int = 20

if onGuestList_part2 && age >= 21 {
    print("Welcome \(name), please come in and have a seat.")
}

if !onGuestList_part2 || age <= 21 {
    print("I'm sorry \(name), you're either not on the guest list or you're not of the legal drinking age.")
}

