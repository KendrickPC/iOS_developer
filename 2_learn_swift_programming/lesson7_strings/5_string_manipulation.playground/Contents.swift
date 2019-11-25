import Foundation
import UIKit

/*
Appending Two Strings
Similar to concatenation, String also has an append() method that takes a
string as an argument and attaches it to the string you're mutating.
*/

print("\nExample #1")
var hello = "hello "
let world = "world!"
hello.append(world)

// Is the equivalent of

hello = hello + world

// or

hello += world

// With append() you don't need to reassign hello a new value, and you'll
// find the code is much more readable.

/*
Trimming characters
In addition to append(), we can also remove characters from the end of a
string. For example, you may want to remove all whitespace characters from
the end of a user's input.
*/

print("\nExample #2")
var message = "   Be back later!        "
print(message)

while message.last == " " {
    message.removeLast()
}
print(message)


while message.first == " " {
    message.removeFirst()
}
print(message)

/*
Replacing Substrings:
We can also modify the middle of strings. A common manipulation method is
replacingOccurrences(of: String, with: String), which allows us to swap out
one substring with another.
 
This method might come in handy for implementing a Find and Replace feature,
a profanity filter, and many other cases, and is great to have in your string
manipulation bag of tricks.
 
Note: To use the replaceOccurrences() method, you will need to add import
Foundation to the top of your file. Foundation is a framework, which is just
a name for a collection of commonly used code. Apple provides frameworks like
Foundation so that developers, like you, don't need to reinvent the wheel for
common tasks like string manipulation. We've already imported Foundation in
the playground, so you can just follow along with the examples.
*/

print("\nExample #3")
let verbose = "We hope you are very excited to learn Swift. It's a very fun and very useful skill. Soon enough, you'll be writing your very own app!"
let better = verbose.replacingOccurrences(of: "very ", with: "")
print(better)

let angryWoman = "Fuck you you mother fucking piece of shit. You are a huge fucking asshole."
let profanityFilter = angryWoman.replacingOccurrences(of: "fuck", with: "****")
print(profanityFilter)
