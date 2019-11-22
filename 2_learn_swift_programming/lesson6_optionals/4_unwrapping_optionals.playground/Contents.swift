import UIKit

//var str = "Hello, playground"

/*
A Scenario That Could Return an Optional with a Nil Value:
Above we can see that the string, “123”, will convert to an Int with no
problem, but what if we weren’t so sure? Here is a scenario in which the
optional variable might actually evaluate to nil:
*/

var zee: Int?

var string: String
let randomNumber = Int(arc4random() % 2)
if randomNumber == 1 {
    string = "123"
} else { // always 0
    string = "ABC"
}

zee = Int(string)
print(zee)
// Expression implicitly coerced from 'Int?' to 'Any'

/*
How do we Unwrap zee Safely, So That We Can Use it in Further Operations?
 
Swift uses the if let construction to carefully unwrap optionals. Take the
time to really study this expression, it will be coming up frequently in
your Swift projects.

 
 */

if let intValue = zee {
    intValue * 2
} else {
    "No value."
}

print("testing2")


/*
 A Naming Convention for Unwrapped Variables:
 In the above example I chose variable names to make the code easier to read,
 but a convention adopted by many developers is to name the unwrapped variable
 to match the wrapped variable, like this:
*/

if let bobTheInteger = bobTheInteger {
    bobTheInteger * 2
} else {
    "No value."
}

/*
 This can be a little confusing at first, but you’ll get used to it after you
 see it a few times. You may find that this convention saves time, since you
 don’t have to come up with a new name for every unwrapped variable.
 */


