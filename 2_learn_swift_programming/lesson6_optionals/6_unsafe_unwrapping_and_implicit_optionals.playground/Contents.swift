import UIKit

/*
 Example: Revisiting the Int() Initializer Method
 Let’s say we’re using the Int() initializer method and invoking it on a variable that we are confident can be converted to an Int.
*/

let w = Int("123")

/*
 We know this method is going to return the Int, 123, so in this case, unwrapping with the exclamation point is appropriate. We know there is little risk of a fatal error being thrown. We can place the exclamation point after w, like this:
 */

w! * 2

// Or we could unwrap the return value directly, like this:

let w = Int("123")!


/*
 Implicitly Unwrapped Optionals: Revisiting the Villain struct
 What about declaring implicitly unwrapped optionals? When is an appropriate time to be so bold? Well, remember the evilScheme property of the Villain struct? We wanted the ability to create instances of Villain with the option of not providing an evilScheme at first. However, once we know that the evilScheme has been set, we can access the property as if it were a regular non-optional type.
 */

struct Villain {
    let name: String
    // exclamation point means implicitly unwrapped
    var evilScheme: String!

    func performScheme() {
        // no unwrapping necessary
        print("And now, I will \(evilScheme)!")
    }
}

var villain = Villain(name: "Billy", evilScheme: nil)
villain.evilScheme = "steal from the cookie jar"
// we know for sure the scheme has been set
villain.performScheme()

/*
 There are a few things to note in the example above.

 The evilScheme property is now declared as an implicitly unwrapped optional. It's type is written as String! instead of String?.
 In the performScheme() method, we reference evilScheme as any other property, without unwrapping.
 We call performScheme() once we know for a fact that evilScheme was set. The function assumes that evilScheme is not nil. If we treat an implicitly unwrapped optional that contains nil as if it contained a value, bad things can happen - including crashes!
 You'll see these types of optionals (and their more dangerous side) frequently when you start building user interfaces for iOS. For now, give yourself a pat on the back and get ready for the next lesson.
 */

