import UIKit

/*
 Using if else and else statements, let's finish implementing our club
 screening program. To do this exercise, go back to the If Statements
 Exercise - The Club page.
*/

/*
The Club: Part 3
We know that if someone is on the guest list and is 21 or older, then
they'll be admitted into the club. Otherwise, they will be turned away.
Knowing this fact, rewrite your code into a single if statement. The
else case should be used to turn the clubgoer away.
*/

var name_part3: String = "Kenderson"
var age_part3: Int = 37
var onGuestList_part3: Bool = true
onGuestList_part3 = false

if onGuestList_part3 && age_part3 >= 21 {
    print("Welcome \(name_part3). Please come on in.")
} else {
    print("Dear \(name_part3), please go home.")
}

/*
 The Club: Part 4
 There's one exception to our club's rules. If someone knows the owner,
 they can get into the party, regardless of their age or whether or not
 they're invited.

 Add an else if statement to your program to check if knowsTheOwner is
 true. If so, print a message informing the person to see the owner.
*/

var name_part4: String = "Charles"
var age_part4: Int = 39
var onGuestList_part4: Bool = false
var personallyKnowsOwner: Bool = true

if onGuestList_part4 && age_part4 >= 21 {
    print("Welcome \(name_part4), please join Ken for the party.")
} else if personallyKnowsOwner {
    print("Welcome \(name_part4), please join Ken for the party.")
} else {
    print("Dear \(name_part4), please go home.")
}


