import UIKit

/*
 Switch Statements
 While not as common as the if statement, switch statements also allow you to
 execute blocks of code when specific conditions are met. Switch statements
 are especially useful when conditioning on multiple values of a given
 variable.

 Example
 Let’s say we want to represent a date, and we have three variables:
 month, day, year. We want to format those variables to print “9/23/2015”
 like “September 23, 2015.” How to do we convert the integer for month to a
 String? We could use an if-statement:

    if month == 1{
      print("January")
    } else if month == 2 {
      print("February")
    }
 
 The if-statement isn’t a bad way of doing this, but you can see that it
 would require us to repeat the variable name, month, 12 times! In this case,
 a switch statement is more concise.

 We could rewrite this like this:
    
    switch month {
    case 1: print(“January”)
    case 2: print(“February”)
    // ...
    }
 
 This way, we don’t have to write the name of the variable multiple times!
 */

// Practice: Switch Statements
// Rewrite the following code to use a switch statement.

// https://learnappmaking.com/switch-swift-how-to/

enum Food {
    case breakfast
    case lunch
    case dinner
    case snack
}

let meal = Food.snack

switch meal {
case .breakfast:
    print("Good morning!")
case .lunch:
    print("Good afternoon!")
case .dinner:
    print("Good evening!")
case .snack:
    print("Hello!")
}


