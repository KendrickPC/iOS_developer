import UIKit

var str = "Hello, playground"
print(str)

// Example 1: Nil is disallowed in most Swift types

    //var x: Int
    //x = nil
    // error: 'nil' cannot be assigned to type 'Int'

/*
Sometimes We Need Nil Values
Under which conditions would a value need to be nil? Let’s explore the
two most common scenarios. The first has to do with values returned
from methods.

1. A Function That Cannot Return a Value
There are some cases in which it wouldn’t make sense for a function to
return a value. A good example is the Int(string) function which
initializes an Int from a String. Not all strings can be converted to Ints.
*/

/*
var y: Int
var s1: String
var s2: String

s1 = "123"
s2 = "ABC"

y = Int(s1)
y = Int(s2)
// note: force-unwrap using '!' to abort execution if the optional value contains 'nil'
// y = Int(s2)
*/

/*
2. Properties That Don't Need to Be Initialized When an Object is Constructed

The struct has two properties: name (a String) and evilScheme (an optional
String). This means that all instances of Villain must have a name. However,
the evilScheme can be determined at a later time. This choice between either
having a value or nil is why we make evilScheme optional.
*/

struct Villian {
    let name: String
    // Question mark below makes the properties optional.
    // Can also use Any?
    var evilScheme: String?
}

let villian = Villian(name: "Joker", evilScheme: nil)
print(villian)

// Initialize evilScheme to nil knowing we can give it a string value later.

