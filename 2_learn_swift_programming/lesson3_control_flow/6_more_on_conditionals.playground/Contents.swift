import UIKit

/*
 For cases when you are testing two or more conditions, you may be tempted
 to place one if statement inside of another, nesting the if statements.
 For example, if your friend is hungry, you might want to then check if
 he or she is a vegetarian before you decide what to eat.
*/


// Example 1:
var hungry: Bool = true
var vegetarian: Bool = false

func whatToEat() {
    if hungry {
        if vegetarian {
            print("Let's grab a salad to eat.")
        } else {
            print("Let's go eat some meat.")
        }
    }
}

whatToEat()


// Example 2:
func whatToEatOnFriday() {
    if hungry && vegetarian {
        print("Let's eat a salad!")
    } else if hungry && !vegetarian {
        print("Let's go eat some Korean BBQ!")
    }
}

whatToEatOnFriday()



