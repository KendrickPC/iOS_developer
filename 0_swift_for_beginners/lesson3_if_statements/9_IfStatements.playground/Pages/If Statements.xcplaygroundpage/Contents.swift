//: # If Statements

import UIKit

//Let’s practice what you’ve learned with another exercise. We'll return to our bouncer example. Proceed to the next playground page, If Statements Exercise 2: In the Club, Again in the IfStatements.playground file.
//
//Again we have a person who wants to enter a night club. This time, we have a little bit more information. We know the clubgoer’s age, if they’re on the guest list, and if they know the owner. With the additional information, we will screen clubgoers using an if, else if statement. We’re going to add another function called screenVIP(age: Int, onGuestList: Bool, knowsTheOwner: Bool) to the playground file.


//Exercise 2: In the Club, Again
//Add an if, else if statement to thescreenVIP(age: Int, onGuestList: Bool, knowsTheOwner: Bool) function such that if a clubgoer is over 21 years of age and is on the guest list, admit(person: String) is called. If a clubgoer is not over 21 or is not on the guest list, deny(person: String) is called, unless the person knows the owner. If the person knows the owner, he or she needs to be taken to see the owner, and sendToOwner(person: String) should be called.
//
//When you are finished implementing screenVIP(age: Int, onGuestList: Bool, knowsTheOwner: Bool), call the function using the predefined values. Paste the output you see into the textbox below. Try changing the values and see how the output changes.


var age = 18
var onGuestList = false
var knowsTheOwner = false


func deny() {
    print("You are not a VIP member. Go home.")
}

func admit() {
    print("Welcome VIP. Please follow the hostess to your VIP table.")
}


func screenVIP() {
    if age > 21 {
        admit()
    }
    else if onGuestList {
        admit()
    }
    else if knowsTheOwner {
        admit()
    }
    else {
        deny()
    }
}

screenVIP()
