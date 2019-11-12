import UIKit

//Exercise 1a: The Bouncer
//Your first task is to add an if statement to the screen(onGuestList: Bool, person: String) function that checks who is allowed into the club. If a clubgoer is on the guest list the admit(person: String) function should be called, and if a clubgoer is not on the guest list the deny(person: String) function should be called. You'll want to make use of the property onGuestList, a variable that indicates whether a clubgoer is on the guest list.
//
//Once you've done that, call the screen(onGuestList: Bool, person: String) function using a clubgoer of the predefined name and age. You can do that by typing screen(onGuestList: <onGuestList>, person: <nameOfClubgoer>) into the playground. Look at the console output and paste what you see into the textbox below.


// Example 1a:
var onGuestList_1a = true
var person_1a = "Kenderson"

func admit() {
    print(person_1a + ", come and party with us!")
}

func deny() {
    print(person_1a + ", you are not on the guest list. Loser!")
}

func screen() {
    if onGuestList_1a {
        admit()
    }
    if !onGuestList_1a {
        deny()
    }
}

screen()


//Exercise 1b: The Bouncer
//Move on to the next page of the playground.
//
//Your second task is to call the function screenUnder21(age: Int, onGuestList: Bool, person: String). In this screening function, a person must both be on the guest list AND be over 21 to be admitted to the club. Add the appropriate if statement to call admit(person: String) and deny(person: String) as before.
//
//Call the screenUnder21(age:Int, onGuestList: Bool, person: String) function using the predefined values for name, age, and onGuestList. Paste the output you see into the textbox below.

var age = 37
var onGuestList_1b = true
var person_1b = "Kenderson"

func admit_1b() {
    print("Come on in old man.")
}
func deny_1b() {
    print("You're either too old or not on the guest list. Go home.")
}

func screenUnder21() {
    if onGuestList_1b && age > 21 {
        admit_1b()
    }
    else {
        deny_1b()
    }
}

screenUnder21()




